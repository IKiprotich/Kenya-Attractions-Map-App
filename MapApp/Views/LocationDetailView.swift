//
//  LocationDetailView.swift
//  MapApp
//
//  Created by Ian   on 17/05/2025.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    
    var body: some View {
        ScrollView{
            VStack{
               imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading,spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

#Preview {
    LocationDetailView(location: LocationsDataService.locations.first!)
        .environmentObject(LocationsViewModel())
}

extension LocationDetailView{
    
    private var imageSection: some View{
        TabView{
            ForEach(location.imageNames, id: \.self){
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
                
                
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let url = URL(string: location.link){
                Link("Read More On Wikipedia", destination: url)
                    .font(.headline)
                    .tint(Color.blue)
            }
            
        }
    }
        
        private var mapLayer: some View {
            
            Map(coordinateRegion: .constant(MKCoordinateRegion(
                center: location.coordinates,
                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
                annotationItems: [location]) { location in
                MapAnnotation(coordinate: location.coordinates){
                    LocationMapAnnotationView()
                        .shadow(radius: 10)
                }
                
            }
                .allowsHitTesting(false)
                .aspectRatio(1, contentMode: .fit)
                .cornerRadius(30)
        }
    
    private var backButton: some View {
        Button (action:{
            vm.sheetLocation = nil
        }, label: {
            Image(systemName: "xmark")
                .foregroundColor(.primary)
                .padding(16)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        })
    }
        
        
    }

