//
//  ExploreFeedView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/28/22.
//

import SwiftUI
import CoreLocation

struct ExploreFeedView: View {
    
    @EnvironmentObject var sessionProfile: SessionProfile
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(sessionProfile.exploreFeed) {
                    PlaceView(place: $0)
               }.onAppear(){
                   sessionProfile.getFeedLocations()
               }
            }
        }

    }
}

struct PlaceView: View {
    
    let place: HomeSearchQuery.Data.HomeSearch.Datum
    @EnvironmentObject var sessionProfile: SessionProfile

    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.gray).frame(width: 300, height: 100)
            VStack(alignment: .trailing) {
                PlaceNavigationLink(name: place.companyName, _id: place._id, imageUrl: place.defaultImageUrl).frame(width: 100, height: 100, alignment: .topTrailing).foregroundColor(.green)
                }
        }.onAppear(){
            let _id = place._id
            let lat = place.location?.coordinates?[1]
            let lng = place.location?.coordinates?[0]
            sessionProfile.addToMap(lat: lat, lng: lng, id: _id)
     
        }.onDisappear(){
            let _id = place._id
            sessionProfile.removeFromMap(_id: _id)
        }
}
    
}



struct ExploreFeedView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreFeedView()
    }
}


