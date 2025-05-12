//
//  Location.swift
//  MapApp
//
//  Created by Ian   on 12/05/2025.
//

import Foundation
import MapKit

struct Location {
    //Every location need to have all of this information
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
}
