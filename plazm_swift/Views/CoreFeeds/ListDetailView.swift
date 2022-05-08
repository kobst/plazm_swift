//
//  ListDetailView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/28/22.
//

import SwiftUI


// from business detail / list explore
struct ListDetailNavigationLink: View {
    var name: String?
    var _id: String?
    var imageUrl: String?
    
    var body: some View {
//        NavigationLink(destination: ListDetailNavView(_listName: name ?? "", _listId: _id ?? "")){
        NavigationLink(destination: ListDetail(_listName: name ?? "", _listId: _id ?? "")){
            ImageView(withURL: imageUrl).frame(width: 32, height: 32, alignment: .center).clipShape(Circle())
            Text(name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .leading)
        }
//        .isDetailLink(false)
    }
}


final class ListDetailModel: ObservableObject {
//    @EnvironmentObject var sessionProfile: SessionProfile
    @Published var selectedList: GetListDetailsQuery.Data.GetListDetail.ListDetail? = nil
    @Published var selectedListPosts: [GetListDetailsQuery.Data.GetListDetail.Datum] = []
    var listDetailOffset = 0
    
    func getListDetails(listId: String, fromMenu: Bool){
        print("getting list details" + listId)
        
        
        Network.shared.apollo.fetch(query: GetListDetailsQuery(id: listId, value: listDetailOffset)) {result in
                switch result {
                case .success(let graphQLResult):
                    print("Success! Result: List Detail")
                    if let items = graphQLResult.data?.getListDetails.data?.compactMap({$0}){
                        self.selectedListPosts = items
                    }
                    if let listInfo = graphQLResult.data?.getListDetails.listDetails {
                        self.selectedList = listInfo
                    }
                    
                case .failure(let error):
                    print("Failure! Error: \(error)")
                    self.selectedListPosts = []
                }
            
        }
    }
        
    }

    
struct ListDetail: View {
    
    @State private var isActive : Bool = false
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @Environment(\.rootPresentationMode) private var rootPresentationMode: Binding<RootPresentationMode>
    
    @EnvironmentObject var sessionProfile: SessionProfile
    @ObservedObject var model = ListDetailModel()
    
    var _listName: String
    var _listId: String
    
    
    var body: some View {
        VStack{
            Text(_listName).onAppear(){
                model.getListDetails(listId: _listId, fromMenu: false)
            }
            ScrollView{
                LazyVStack{
                    ForEach(model.selectedListPosts) {
                        ListItem(post: $0)
                    }
                }.onAppear(){
                    sessionProfile.getFeedLocations()
                }
            }
            
        }

    }
    
    func popToRoot() {
        self.rootPresentationMode.wrappedValue.dismiss()
    }
    
    
}





struct ListItem: View {
    @EnvironmentObject var sessionProfile: SessionProfile

    let post: GetListDetailsQuery.Data.GetListDetail.Datum

    var body: some View {
        VStack {

            PlaceNavigationLink(name: post.business?[0]?.companyName, _id: post.business?[0]?._id, imageUrl: post.business?[0]?.defaultImageUrl)
            Text(post.data ?? "")
                .font(.custom("AvenirNext-Medium", size: 14))
                .foregroundColor(.black)
                .frame(width: 300, height: 200, alignment: .leading)
                .lineLimit(4)
        }.onAppear(){
            let _lng = post.businessLocation?.coordinates?[0]
            let _lat = post.businessLocation?.coordinates?[1]
            let _id = post._id
            sessionProfile.addToMap(lat: _lat, lng: _lng, id: _id)
     
        }.onDisappear(){
            let _id = post._id
            if let id = _id {
                sessionProfile.removeFromMap(_id: id)
            }
        }
    }
}



// from NavLink or SideMenu
// from NavLink use onAppear to call session getListDetails / show a header?
// from SideMenu just use function call on press / just show posts....

struct ListDetailView: View {
    @EnvironmentObject var sessionProfile: SessionProfile
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(sessionProfile.detailFeed) {
                    ListItem(post: $0)
                }
            }
        }
    }
}

struct ListDetailNavView: View {
    @EnvironmentObject var sessionProfile: SessionProfile
    
    @Environment(\.isPresented) private var isPresented
    @Environment(\.dismiss) private var dismiss
    
    var _listName: String
    var _listId: String
    
    var body: some View {
        ListDetailNavHeader(name: _listName)
        ScrollView{
            LazyVStack{
                ForEach(sessionProfile.detailFeed) {
                    ListItem(post: $0)
                }
            }
        }.onAppear(){sessionProfile.getListDetails(listId: _listId, fromMenu: false)}
    }
}


struct ListDetailNavHeader: View {
    var name: String
    var body: some View {
        Text(name).bold().foregroundColor(.cyan)
    }
}


struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView()
    }
}
