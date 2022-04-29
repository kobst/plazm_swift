//
//  ExploreFeedView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/28/22.
//

import SwiftUI

struct ExploreFeedView: View {
    
    @EnvironmentObject var sessionProfile: SessionProfile
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(sessionProfile.exploreFeed) {
                    PlaceView(place: $0)
//                    Text("explore" + ($0.companyName ?? ""))
                }
            }
        }

    }
}

struct PlaceView: View {
    
    let place: HomeSearchQuery.Data.HomeSearch.Datum

    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Rectangle().foregroundColor(.black).frame(width: 300, height: 170)
//            ImageView(withURL: place.defaultImageUrl).frame(width: 250, height: 150, alignment: .center)
            HStack{
                Text(place.companyName ?? "").font(.custom("AvenirNext-Medium", size: 16)).foregroundColor(.red).frame(width: 150, height: 100)
                ImageView(withURL: place.defaultImageUrl).frame(width: 32, height: 32).clipShape(Circle())
            }.frame(width: 100, height: 100, alignment: .topTrailing).foregroundColor(.green)

        }.frame(width: 300, height: 170, alignment: .center)
        .onAppear(){
            print("showing post " + (place.companyName ?? ""))
        }.onDisappear(){
                    print("not showing post " + (place.companyName ?? ""))
        }
}
    
}



struct ExploreFeedView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreFeedView()
    }
}


