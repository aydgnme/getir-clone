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
                .foregroundColor(.accent)
                .padding(.leading)
                .fontWeight(.black)
                .frame(width: 50, height: 50)
            TextField("Search street or post code", text: $searchText)
                .textFieldStyle(PlainTextFieldStyle())
                .fontWeight(.semibold)
                .padding(.trailing, 20)
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    @State var searchText = ""
    SearchBarView(searchText: $searchText)
}
