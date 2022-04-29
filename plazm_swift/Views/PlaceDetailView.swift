//
//  PlaceDetailView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/29/22.
//

import SwiftUI

struct PlaceDetailView: View {
    @Environment(\.isPresented) private var isPresented
    @Environment(\.dismiss) private var dismiss
    
    var place: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Place
    var posts: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Post
    
    var body: some View {
        Text(place.companyName ?? "")
    }
}

struct PlaceDetailHeader: View {
    var place: SearchPlacesByUserIdQuery.Data.SearchPlacesByUserId.Place
    
    var body: some View {
        Text(place.companyName ?? "")
    }
    
}

//struct PlaceDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceDetailView(place: <#T##HomeSearchQuery.Data.HomeSearch.Datum#>)
//    }
//}
