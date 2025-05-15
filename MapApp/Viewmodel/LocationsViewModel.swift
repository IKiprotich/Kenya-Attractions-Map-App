//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Ian   on 12/05/2025.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    //All loaded locations
    @Published var locations: [Location]
    
    //Curent location on the map
    @Published var mapLoacation: Location{
        didSet{
            updateMapRegion(location: mapLoacation)
        }
    }
    
    //current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    //show lists of location
    @Published var showLocationsList: Bool = false
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLoacation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut){
            mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
            
        }
    }
    
    public func toggleLocationsList(){
        withAnimation(.easeInOut){
            showLocationsList.toggle()
        }
    }
    
    public func showNextLocation(location: Location){
        withAnimation(.easeInOut){
            mapLoacation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPressed(){
        //get the current index
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLoacation}) else {
            print("Could not find current index from locations array and should never happen")
            return
        }
        
        //check if currentindex is valid
        let nextIndex = (currentIndex + 1)  % locations.count
        guard locations.indices.contains(nextIndex) else{
            //next index is not valid
            //restart from 0
            guard let firstLocation = locations.first else{ return }
            showNextLocation(location: firstLocation)
            
            return
        }
        
        //next index is valid
        let nextLocation = locations[nextIndex]
            showNextLocation(location: nextLocation)
        
        }
        
        
    }

