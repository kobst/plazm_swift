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
        NavigationLink(destination: ListDetailNavView(_listName: name ?? "", _listId: _id ?? "")){
            ImageView(withURL: imageUrl).frame(width: 32, height: 32, alignment: .center).clipShape(Circle())
            Text(name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .leading)

        }
    }
}




struct ItemViewDetail: View {
    
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
            print("showing post " + (post.business?[0]?.companyName ?? "post appeared"))
        }.onDisappear(){
            print("not showing post " + (post.business?[0]?.companyName ?? "post disappeared"))
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
                    ItemViewDetail(post: $0)
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
                    ItemViewDetail(post: $0)
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
