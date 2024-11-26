//
//  MapMarkerView.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI

struct MapMarkerView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.indigo)
                .frame(width: 30, height: 30)
            Circle()
                .fill(Color.yellow)
                .frame(width: 10, height: 10)
        }
    }
}

#Preview {
    MapMarkerView()
}
