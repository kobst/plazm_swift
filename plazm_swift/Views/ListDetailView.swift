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
            NavigationLink(destination: Text(post.business?[0]?.companyName ?? "")) {
                HStack{
                    Text(post.business?[0]?.companyName ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.black).frame(width: 100, height: 100, alignment: .trailing)
                    ImageView(withURL: post.business?[0]?.defaultImageUrl).frame(width: 32, height: 32, alignment: .center).clipShape(HexagonShape())
                }.frame(width: 300, height: 100, alignment: .leading)

            }

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
