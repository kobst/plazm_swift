//
//  PostEventView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/27/22.
//

import Foundation
import SwiftUI

import CoreLocation

enum ItemType{
    case post
    case event
}


struct ItemView: View {
    @EnvironmentObject var sessionProfile: SessionProfile

    let post: GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum
//    let index: Int
    var type: ItemType = .post

    var body: some View {
        VStack {
            HStack(){
                ListDetailNavigationLink(name: post.listId?[0]?.name, _id: post.listId?[0]?._id, imageUrl: post.listId?[0]?.media?[0]?.image)
                PlaceNavigationLink(name: post.business?[0]?.companyName, _id: post.business?[0]?._id, imageUrl: post.business?[0]?.defaultImageUrl)
                
            }.frame(width: 300, height: 100, alignment: .leading)

            Text(post.data ?? "")
                .font(.custom("AvenirNext-Medium", size: 14))
                .foregroundColor(.black)
                .frame(width: 300, height: 100, alignment: .leading)
                .lineLimit(4)
        }
        .onAppear(){
            let _lng = post.businessLocation?.coordinates?[0]
            let _lat = post.businessLocation?.coordinates?[1]
            let _id = post._id
//            sessionProfile.addToMap(lat: _lat, lng: _lng, id: String(index))
            sessionProfile.addToMap(lat: _lat, lng: _lng, id: _id)

     
        }.onDisappear(){
            let _id = post._id
            if let id = _id {
//                sessionProfile.removeFromMap(_id: String(index))
                sessionProfile.removeFromMap(_id: id)
            }
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
                }.onAppear(){
                    sessionProfile.getFeedLocations()
                }
            }
        }
    }
    
}



//struct HomeFeedEnumerated: View {
//
//    @EnvironmentObject var sessionProfile: SessionProfile
//
//    var body: some View {
//        ScrollView{
//            LazyVStack{
//                ForEach(Array(zip(sessionProfile.homeFeed.indices, sessionProfile.homeFeed)), id: \.0) { index, item in
//                    ItemView(post: item, index: index)                }
//            }
//        }
//    }
//
//}



