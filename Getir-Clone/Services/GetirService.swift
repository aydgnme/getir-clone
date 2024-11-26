//
//  GetirService.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import Foundation

struct GetirService: Identifiable {
    
    let id = UUID()
    let title: String
    let description: String?
    let imageName: String
    let showPrice: Bool
    //Add route
    
    static let mockServices = [
        GetirService(title: "getir", description: "2.000+ products\nwithin minutes",
                     imageName: "basket.fill", showPrice: false),
        GetirService(title: "getirfinans", description: nil,
                     imageName: "creditcard.fill", showPrice: true),
        GetirService(title: "getirmore", description: "Bulk orders",
                     imageName: "bag.fill", showPrice: false),
        GetirService(title: "getirfood", description: "Food delivery",
                     imageName: "hamburger", showPrice: false),
        GetirService(title: "getirlocals", description: "Local shops",
                     imageName: "leaf.fill", showPrice: false),
        GetirService(title: "getirshopping", description: "Online shopping",
                     imageName: "shippingbox.fill", showPrice: false),
        GetirService(title: "getirjobs", description: "Find jobs",
                     imageName: "person.2.fill", showPrice: false),
        GetirService(title: "getirbitaksi", description: "Taxi service",
                     imageName: "car.fill", showPrice: false)
    ]
}
