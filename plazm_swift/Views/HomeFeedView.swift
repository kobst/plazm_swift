//
//  PostEventView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/27/22.
//

import Foundation
import SwiftUI





struct ItemView: View {
    
    let post: GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum

    var body: some View {
        VStack {
            HStack(spacing: 10){
                ImageView(withURL: post.listId?[0]?.media?[0]?.image).frame(width: 32, height: 32, alignment: .center).clipShape(Circle())
                Text(post.listId?[0]?.name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .leading)
                NavigationLink(destination: Text(post.business?[0]?.companyName ?? "busi")){
                    Text(post.business?[0]?.companyName ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .trailing)
                    ImageView(withURL:post.business?[0]?.defaultImageUrl).hexagonal(with: 32.0).clipShape(HexShapeFlat())
                }
            }.frame(width: 300, height: 100, alignment: .leading)

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
