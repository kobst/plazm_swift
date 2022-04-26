//
//  Location.swift
//  plazm_swift
//
//  Created by Edward Han on 4/25/22.
//

import Foundation

enum TypeLocation {
    case GeoJson
    case point
}

struct Coordinates {
    var lat: Double
    var lng: Double
}


struct Location {
    var type: String
    var coordinates: Coordinates
}
