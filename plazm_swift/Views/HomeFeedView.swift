//
//  PostEventView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/27/22.
//

import Foundation
import SwiftUI



enum ItemType{
    case post
    case event
}


struct ItemView: View {
    @EnvironmentObject var sessionProfile: SessionProfile

    let post: GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum
    
    var type: ItemType = .post

    var body: some View {
        VStack {
            HStack(spacing: 10){
//                ImageView(withURL: post.listId?[0]?.media?[0]?.image).frame(width: 32, height: 32, alignment: .center).clipShape(Circle())
//                Text(post.listId?[0]?.name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .leading)
                ListDetailNavigationLink(name: post.listId?[0]?.name, _id: post.listId?[0]?._id, imageUrl: post.listId?[0]?.media?[0]?.image)
                PlaceNavigationLink(name: post.business?[0]?.companyName, _id: post.business?[0]?._id, ownerId: sessionProfile._user?._id, imageUrl: post.business?[0]?.defaultImageUrl)
                
            }.frame(width: 300, height: 100, alignment: .leading)

            Text(post.data ?? "")
                .font(.custom("AvenirNext-Medium", size: 14))
                .foregroundColor(.black)
                .frame(width: 300, height: 200, alignment: .leading)
                .lineLimit(4)
        }
//        .onAppear(){
//            print("showing post " + (post.business?[0]?.companyName ?? "post appeared"))
//        }.onDisappear(){
//            print("not showing post " + (post.business?[0]?.companyName ?? "post disappeared"))
//        }
    }
}



struct HomeFeed: View {
    
    @EnvironmentObject var sessionProfile: SessionProfile
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(sessionProfile.homeFeed) {
                    ItemView(post: $0)
                }
            }
        }
    }
    
}
