//
//  BookmarksView.swift
//  Catholic Tigrinya Bible
//
//  Created by Tesfaldet Haileab on 7/19/24.
//

import SwiftUI

struct BookmarksView: View {
    var body: some View {
        VStack {
            List {
                Text("Bookmark 1")
                Text("Bookmark 2")
                // Add more bookmarks here
            }

            Spacer()
        }
        .navigationBarTitle("Bookmarks", displayMode: .inline)
    }
}

struct BookmarksView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarksView()
    }
}
