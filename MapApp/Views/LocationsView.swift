//
//  LocationsView.swift
//  MapApp
//
//  Created by Ian   on 12/05/2025.
//

import SwiftUI
import MapKit

struct LocationsView: View {
   
    @EnvironmentObject private var vm : LocationsViewModel
    
    
    var body: some View {
        ZStack{
            Map(coordinateRegion:$vm.mapRegion )
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
