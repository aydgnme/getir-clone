//
//  AdressView.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//
/*

import SwiftUI
import MapKit
import CoreLocation

class IdentifiableMKPointAnnotation: MKPointAnnotation, Identifiable {
    var id = UUID()
}

struct AddressView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
        span: MKCoordinateSpan(latitudeDelta: 90, longitudeDelta: 180)
    )
    
    @State private var locationManager = CLLocationManager()
    @State private var userLocation: CLLocationCoordinate2D?
    @State private var address: String = ""
    @State private var searchResult: String = ""
    @State private var annotations: [IdentifiableMKPointAnnotation] = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color.indigo)
                        TextField("Search street or post code", text: $address)
                            .onSubmit {
                                geocodeAddress(address)
                            }
                            .padding()
                            .frame(height: 25)
                    }
                    .padding()
                    padding(EdgeInsets (top: 0, leading: 10, bottom: 0, trailing: 10))
                    
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    
                    Text("Arama Sonucu: \(searchResult)")
                        .padding()
                    
                    Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
                        MapPin(coordinate: annotation.coordinate, tint: .red)
                    }
                    .frame(height: 300)
                    
                    Button {
                        if let userLocation = userLocation {
                            updateRegionForLocation(userLocation)
                        } else {
                            searchResult = "Konum alınamadı"
                        }
                    } label: {
                        Text("Continue")
                            .padding()
                            .frame(width: 350, height: 50)
                            .background(Color.indigo)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .cornerRadius(8)
                    }
                    .padding()
                }
            }
            .navigationTitle("Select Delivery Address")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Handle
                    } label: {
                        Image(systemName: "mappin.circle.fill")
                    }
                }
            }
            .onAppear {
                requestLocationPermission()
            }
        }
    }
    
    private func requestLocationPermission() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = LocationDelegate(location: $userLocation)
        locationManager.startUpdatingLocation()
    }
    
    private func geocodeAddress(_ address: String) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            if let placemark = placemarks?.first {
                if let coordinate = placemark.location?.coordinate {
                    updateRegionForLocation(coordinate)
                    searchResult = placemark.name ?? "Adres bulunamadı"
                    addPin(at: coordinate)
                }
            } else {
                searchResult = "Adres bulunamadı"
            }
        }
    }
    
    private func updateRegionForLocation(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    }
    
    private func addPin(at location: CLLocationCoordinate2D) {
        let newAnnotation = IdentifiableMKPointAnnotation()
        newAnnotation.coordinate = location
        annotations.append(newAnnotation)
        updateRegionForLocation(location)
    }
}

class LocationDelegate: NSObject, CLLocationManagerDelegate {
    @Binding var location: CLLocationCoordinate2D?
    
    init(location: Binding<CLLocationCoordinate2D?>) {
        _location = location
        super.init()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let newLocation = locations.last else { return }
        location = newLocation.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location error: \(error.localizedDescription)")
    }
}

#Preview {
    AddressView()
}
*/
