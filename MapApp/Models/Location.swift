//
//  Location.swift
//  MapApp
//
//  Created by Ian   on 12/05/2025.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    
    
    //Every location need to have all of this information
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    
    var id: String {
        //name = "Colosseum"
        //cityName = "Rome"
        //id = "ColosseumRome"
        name + cityName
    }
    
    //Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
