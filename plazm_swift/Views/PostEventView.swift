//
//  PostEventView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/27/22.
//

import Foundation
import SwiftUI



struct PostView: View {
    
    let post: GetMyFeedDataQuery.Data.GetMyFeedDatum.Datum

    var body: some View {
        VStack {
            HStack{
                Text(post.listId?[0]?.name ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .leading)
                Text(post.business?[0]?.companyName ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .trailing)
            }.frame(width: .infinity, height: 100, alignment: .leading)

            Text(post.data ?? "")
                .font(.custom("AvenirNext-Medium", size: 14))
                .foregroundColor(.black)
                .frame(width: .infinity, height: 200, alignment: .leading)
                .lineLimit(4)
        }
    }
}
