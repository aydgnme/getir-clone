//
//  SearchBarView.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 26.11.2024.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .padding(.leading)
            TextField("Search street or post code", text: $searchText)
                .textFieldStyle(PlainTextFieldStyle())
                .padding()
        }
        .background(Color.white)
        .cornerRadius(25)
        .padding()
    }
}

#Preview {
    @State var searchText = ""
    SearchBarView(searchText: $searchText)
}
