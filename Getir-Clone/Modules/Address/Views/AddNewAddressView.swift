//
//  AddNewAddressView.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI
import MapKit
import CoreLocation


struct AddNewAddressView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var searchText: String = ""
    
    //@State private var selecetedLocation: CLLocationCoordinate2D?
    //@State private var currentAddress: AddressModel?
    
    var body: some View {
        ZStack {
            
            
            VStack {
                // Header
                VStack {
                    HStack {
                        Button(action: { dismiss() }) {
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding()
                        }
                        Text("Add New Address")
                            .font(.headline)
                            .foregroundColor(.white)
                            .navigationBarTitleDisplayMode(.inline)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .padding(.trailing, 40)
                        
                        Spacer()
                    }
                    .offset(y:20)
                    SearchBarView(searchText: $searchText)
                }
                .background(.accent)
                InfoBannerView()
                
                MapView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.bottom, -50)
                // Map Marker in center
                //MapMarkerView()
                
                VStack {
                    ContinueButton {
                        print("Pressed")
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .padding(.top, -15)
                }
                .offset(y: 10)
                .background(Color.white)
                .cornerRadius(0)
                .padding(.bottom, -25)

            }
            .offset(y: -25)
            
        }
        .navigationBarHidden(false)
    }
}

#Preview {
    AddNewAddressView()
}
