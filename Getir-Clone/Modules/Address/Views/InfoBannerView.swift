//
//  InfoBanneView.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI

struct InfoBannerView: View {
    var body: some View {
        HStack {
            Image(systemName: "info.circle.fill")
                .foregroundColor(.indigo)
            VStack (alignment: .leading) {
                Text("Search or just move the map to your")
                    .font(.callout)
                    .foregroundColor(.darkGray)
                Text("desired location")
                    .font(.callout)
                    .foregroundColor(.darkGray)
            }
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

#Preview {
    InfoBannerView()
}
