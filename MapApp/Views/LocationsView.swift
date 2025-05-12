//
//  LocationsView.swift
//  MapApp
//
//  Created by Ian   on 12/05/2025.
//

import SwiftUI

struct LocationsView: View {
   
    @EnvironmentObject private var vm : LocationsViewModel
    var body: some View {
        List{
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
