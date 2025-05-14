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
            
            
            VStack(spacing: 0){
              header
                .padding()
                
                
                
                Spacer()
            }
            
            
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}


extension LocationsView{
    private var header: some View{
        VStack {
            Button(action: vm.toggleLocationsList) {
                Text(vm.mapLoacation.name + " , " +
                     vm.mapLoacation.cityName
                )
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .frame(height: 55)
                .frame(maxWidth:.infinity)
                .animation(.none, value: vm.mapLoacation)
                .overlay(alignment: .leading) {
                    Image(systemName: "arrow.down")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding()
                        .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                }
            }
            
            if vm.showLocationsList{
                LocationsListView()
            }
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3) ,radius: 20, x: 0, y: 15)
    }
}
