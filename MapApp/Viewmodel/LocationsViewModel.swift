//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Ian   on 12/05/2025.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
