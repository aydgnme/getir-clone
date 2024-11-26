//
//  ServiceCard.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI

struct ServiceCard: View {
    let service: GetirService
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(service.title)
                .font(.headline)
                .foregroundColor(Color(UIColor.systemIndigo))
            
            if service.showPrice {
                HStack(spacing: 4) {
                    Group {
                        Text("34,32")
                        Text("34,84")
                    }
                    .foregroundColor(.green)
                    
                    Text("EUR")
                        .foregroundColor(.secondary)
                    
                    Group {
                        Text("35,95")
                        Text("36,4")
                    }
                    .foregroundColor(.red)
                }
                .font(.caption)
            } else if let description = service.description {
                Text(description)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Image(systemName: service.imageName)
                .font(.title)
                .foregroundColor(Color(UIColor.systemIndigo))
        }
        .padding()
        .frame(height: 140)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}
