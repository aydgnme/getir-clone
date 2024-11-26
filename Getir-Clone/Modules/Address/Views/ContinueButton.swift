//
//  ContinueButton..swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI

struct ContinueButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text("Continue")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.accent)
                .cornerRadius(12)
        }
        .padding()
    }
}
