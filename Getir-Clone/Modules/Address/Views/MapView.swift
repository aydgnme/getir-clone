//
//  MapView.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI
import MapKit
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let manager = CLLocationManager()
    
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.013096, longitude: 28.975726), // Default location (Istanbul)
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    // Public method to request location authorization
    func requestLocationAuthorization() {
        manager.requestWhenInUseAuthorization()
    }
    
    // Handle location updates
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        DispatchQueue.main.async {
            self.region = MKCoordinateRegion(
                center: location.coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
        }
    }
    
    // Handle location authorization status changes
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined:
            // Request permission if not yet determined
            manager.requestWhenInUseAuthorization()
        case .authorizedWhenInUse, .authorizedAlways:
            // Permission granted, start updating location
            manager.startUpdatingLocation()
        case .denied, .restricted:
            // Permission denied, handle appropriately
            break
        default:
            break
        }
    }
}

struct MapView: View {
    @StateObject private var locationManager = LocationManager()
    
    var body: some View {
        Map(coordinateRegion: $locationManager.region, showsUserLocation: true)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                // Request permission on view appearance
                locationManager.requestLocationAuthorization()
            }
            .alert(isPresented: .constant(CLLocationManager.locationServicesEnabled() == false)) {
                Alert(
                    title: Text("Location Services Disabled"),
                    message: Text("Please enable location services in Settings."),
                    dismissButton: .default(Text("OK"))
                )
            }
    }
}

#Preview {
    MapView()
}
