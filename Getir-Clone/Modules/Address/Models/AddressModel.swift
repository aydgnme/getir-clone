//
//  AddressModel.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import Foundation

struct AddressModel {
    let streetName: String
    let StreetNumber: String
    let city: String
    let postalCode: String
    let country: String
    let coordinates: CLLocationCoordinate2D
    
    var formattedAddress: String {
        [
            [
                streetName, streetName
            ].compactMap{ $0 }.joined(separator: " "),
            city,
            postalCode,
            country
        ].compactMap { $0 }
            .joined(separator: ", ")
    }
    
    var coordinatesString: String {
        "Latitude: \(coordinates.latitude), Longitude: \(coordinates.longitude)"
    }
}
