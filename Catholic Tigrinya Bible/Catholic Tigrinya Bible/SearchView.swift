//
//  SearchView.swift
//  Catholic Tigrinya Bible
//
//  Created by Tesfaldet Haileab on 7/19/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var searchResults = [String]() // This should be your search result type

    var body: some View {
        VStack {
            TextField("Search...", text: $searchText, onCommit: {
                performSearch()
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()

            List(searchResults, id: \.self) { result in
                Text(result)
            }

            Spacer()
        }
        .navigationBarTitle("Search", displayMode: .inline)
    }

    func performSearch() {
        // Implement your search logic here
        // For example, filter your Bible text data based on the searchText
        // This is just a placeholder example
        searchResults = ["Genesis 1:1 - In the beginning, God created the heavens and the earth..."]
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

