//
//  PlaceDetailView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/29/22.
//

import SwiftUI
import Apollo

struct PlaceNavigationLink: View {
    var name: String?
    var _id: String?
    var imageUrl: String?
    
    var body: some View {
//        NavigationLink(destination: PlaceDetailView(_placeName: name ?? "", _placeId: _id ?? "")){
        NavigationLink(destination: PlaceDetail(_placeId: _id ?? "")){
            Text(name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .trailing)
            ImageView(withURL: imageUrl).hexagonal(with: 32.0).clipShape(HexShapeFlat())
        }
//        .isDetailLink(false)
    }
}


final class PlaceDetailModel: ObservableObject {
//    @EnvironmentObject var sessionProfile: SessionProfile
    @Published var selectedPlace: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Place? = nil
    @Published var selectedPlacePosts: [SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post] = []
    
    
    func getPlaceDetails(place_id: GraphQLID, ownerId: String){
        let _filters = filterInput(business: false, postsByMe: true, mySubscriptions: true, others: true)
        let sideFilter = sideFilterInput(likes: false, recent: true)
        
        Network.shared.apollo.fetch(query: SearchPlacesByUserIdQuery(id: place_id, value: 0, filters: _filters, ownerId: ownerId, sideFilters: sideFilter, search: "")){result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: Place Received in placedetailmodel")
                if let _place = graphQLResult.data?.searchPlacesByUserId.place?[0] {
                    self.selectedPlace = _place
                }
                if let _posts = graphQLResult.data?.searchPlacesByUserId.posts?.compactMap({$0}) {
                    self.selectedPlacePosts = _posts
//                    for post in _posts {
//                        print(post.postI)
//                    }
                }
                
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        
    }
        
    }

    
}


struct PlaceDetail: View {
    @State private var isActive : Bool = false
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @Environment(\.rootPresentationMode) private var rootPresentationMode: Binding<RootPresentationMode>
    
    @EnvironmentObject var sessionProfile: SessionProfile
    @ObservedObject var model = PlaceDetailModel()

    
    var _placeName: String?
    var _placeId: String
//    init(placeId: GraphQLID, placeName: String, ownerId: String){
//        _placeId = placeId
//        _placeName = placeName
//        model = PlaceDetailModel(placeId: _placeId, ownerId: ownerId)
//    }
    
    var body: some View {
        Text(_placeName ?? "")
        VStack{
            PlaceDetailHeader(placeName: model.selectedPlace?.companyName, address: model.selectedPlace?.address, imageUrl: model.selectedPlace?.defaultImageUrl)
            PlaceDetailPosts(items: model.selectedPlacePosts)
        }.onAppear(){
            model.getPlaceDetails(place_id: _placeId, ownerId: sessionProfile._user?._id ?? "")
        }
    }
    
    
    
    func popToRoot() {
        self.rootPresentationMode.wrappedValue.dismiss()
    }
}




//struct PlaceDetailView: View {
//    @Environment(\.isPresented) private var isPresented
//    @Environment(\.dismiss) private var dismiss
//    @EnvironmentObject var sessionProfile: SessionProfile
//
////    var place: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Place
////    var posts: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post
//
//
//    var _placeName: String?
//    var _placeId: String
////    init(placeId: GraphQLID, placeName: String){
////        _placeId = placeId
////        _placeName = placeName
////        sessionProfile.getPlaceDetails(place_id: placeId)
////    }
//
//    var body: some View {
//
//        VStack{
//            PlaceDetailHeader(placeName: sessionProfile.selectedPlace?.companyName, address: sessionProfile.selectedPlace?.address, imageUrl: sessionProfile.selectedPlace?.defaultImageUrl).onAppear()
//                {sessionProfile.getPlaceDetails(place_id: _placeId)}
//            PlaceDetailPosts(items: sessionProfile.selectedPlacePosts)
//        }
//
//
//    }
//}

struct PlaceItemView: View {
    var post: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post

//    var originalList: Bool = false
    
    var body: some View {
        VStack {

            ListDetailNavigationLink(name: post.postDetails?.list?.name, _id: post.postDetails?.list?._id, imageUrl: post.postDetails?.list?.image).frame(width: 300, height: 100, alignment: .leading)

            Text(post.postDetails?.data ?? "")
                .font(.custom("AvenirNext-Medium", size: 14))
                .foregroundColor(.black)
                .frame(width: 300, height: 200, alignment: .leading)
                .lineLimit(4)
            
         
        }
    }
}




struct PlaceDetailPosts: View {
    var items: [SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post]
    var body: some View {
//        Text("list of psts")
        ScrollView{
            LazyVStack{
                ForEach(items) {
                    PlaceItemView(post: $0)
                }
            }
        }
    }
}

struct PlaceDetailHeader: View {
    var placeName: String?
    var address: String?
    var imageUrl: String?
    
    
    var body: some View {
        VStack(spacing: 10){
            ImageView(withURL: imageUrl)
            Text(placeName ?? "")
            Text(address ?? "")
        }
        
    }

    
}

//struct PlaceDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceDetailView(place: <#T##HomeSearchQuery.Data.HomeSearch.Datum#>)
//    }
//}
