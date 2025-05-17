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
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack{
            
           mapLayer
                .ignoresSafeArea()
            VStack(spacing: 0){
              header
                .padding()
                .frame(maxWidth: maxWidthForIpad)
                Spacer()
                locationsPreviewStack
               
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
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
                    Text(vm.mapLoacation.name + "," +
                         vm.mapLoacation.cityName
                    )
                    .font(.title3)
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

    private var mapLayer: some View{
        Map(coordinateRegion:$vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .scaleEffect(vm.mapLoacation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    
    private var locationsPreviewStack: some View{
        ZStack{
            ForEach(vm.locations){ Location in
                if vm.mapLoacation == Location{
                    LocationPreviewView(location: Location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
               
                
            }
        }
    }
    
}
