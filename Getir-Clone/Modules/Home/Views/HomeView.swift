//
//  HomeView.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Select Delivery Address")
            }
        }
        
        GeometryReader { geometry in
            VStack {
                ZStack {
                    
                    
                    // Map
                    MapView()
                    
                    // Menu
                    Ellipse()
                        .fill(.gri)
                        .frame(width: geometry.size.width * 4, height: geometry.size.height * 1)
                        .position(x: geometry.size.width, y: geometry.size.height * 0.75)
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    VStack {
                        ZStack{
                            VStack(alignment: .trailing) {
                                Text("A dose of happiness!")
                                    .font(.title2)
                                    .fontWeight(.light)
                                    .padding(.bottom, 5)
                                    
                                Text("Getir orders are at your door within minutes!")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    
                            }
                            .padding(.trailing, 20)
                            .offset(y: -125)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                    }
                }
            }
        }
    }
}
                    
                    
//                    
//                    
//                    VStack(spacing: 8) {
//                        Text("A dose of happiness!")
//                            .font(.title2)
//                            .fontWeight(.bold)
//                        
//                        Text("Getir orders are at your door within minutes!")
//                            .font(.subheadline)
//                            .foregroundColor(.secondary)
//                    }
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.white)
//                    .cornerRadius(12)
//                    
                    // Service Grid
//                    LazyVGrid(columns: [
//                        GridItem(.flexible(), spacing: 16),
//                        GridItem(.flexible(), spacing: 16),
//                    ], spacing: 16) {
//                        
//                    }
//                }
//            }
//            .background(Color(UIColor.systemIndigo))
//            .navigationTitle("Select Delivery Address")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button {
//                        // Handle
//                    } label: {
//                        Image(systemName: "mappin.circle.fill")
//                    }
//                }
//            }
//            .navigationDestination(for: GetirRoute.self) { route in
//                
//            }
//            
//        }
//        
//    }
//}

#Preview {
    HomeView()
}
