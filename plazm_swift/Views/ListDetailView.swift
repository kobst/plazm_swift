//
//  ListDetailView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/28/22.
//

import SwiftUI





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

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView()
    }
}
