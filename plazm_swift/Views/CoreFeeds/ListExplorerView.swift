//
//  ListExplorerView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/28/22.
//

import SwiftUI

struct ListExploreCell: View {
    
    let list: GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List
    
    var body: some View {
        VStack {
//            Rectangle().foregroundColor(.black).frame(width: 150, height: 150)
//            ImageView(withURL: list.media?[0]?.image).frame(width: 250, height: 150, alignment: .center)
//            Text(list.name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.red).frame(width: 150, height: 100)
            ListDetailNavigationLink(name: list.name, _id: list._id, imageUrl: list.media?[0]?.image)
            Text(list.description ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.red).frame(width: 150, height: 200)

        }.frame(width: 500, height: 170, alignment: .center)
    }
}

struct ListExplorerView: View {
    @EnvironmentObject var sessionProfile: SessionProfile
    
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: [GridItem(.fixed(150)), GridItem(.fixed(150))]) {
                ForEach(sessionProfile.userLists) {
                  ListExploreCell(list: $0)
                }
            }
        }
    }
}

struct ListExplorerView_Previews: PreviewProvider {
    static var previews: some View {
        ListExplorerView()
    }
}
