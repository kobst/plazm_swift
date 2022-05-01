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
        NavigationLink(destination: PlaceDetailView(_placeName: name ?? "", _placeId: _id ?? "")){
            Text(name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .trailing)
            ImageView(withURL: imageUrl).hexagonal(with: 32.0).clipShape(HexShapeFlat())
        }
    }
}


struct PlaceDetailView: View {
    @Environment(\.isPresented) private var isPresented
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var sessionProfile: SessionProfile
    
//    var place: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Place
//    var posts: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post
    
    
    var _placeName: String?
    var _placeId: String
//    init(placeId: GraphQLID, placeName: String){
//        _placeId = placeId
//        _placeName = placeName
//        sessionProfile.getPlaceDetails(place_id: placeId)
//    }
    
    var body: some View {
        
        VStack{
            PlaceDetailHeader(placeName: sessionProfile.selectedPlace?.companyName, address: sessionProfile.selectedPlace?.address, imageUrl: sessionProfile.selectedPlace?.defaultImageUrl).onAppear()
                {sessionProfile.getPlaceDetails(place_id: _placeId)}
            PlaceDetailPosts(items: sessionProfile.selectedPlacePosts)
        }

        
    }
}

struct PlaceItemView: View {
    let post: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post

    
    var body: some View {
        VStack {
            HStack(spacing: 10){
                ImageView(withURL: post.postDetails?.list?.image).frame(width: 32, height: 32, alignment: .center).clipShape(Circle())
                Text(post.postDetails?.list?.name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .leading)
            }.frame(width: 300, height: 100, alignment: .leading)

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
        Text("list of psts")
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
