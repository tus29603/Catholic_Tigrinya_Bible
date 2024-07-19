//
//  BibleTextView.swift
//  Catholic Tigrinya Bible
//
//  Created by Tesfaldet Haileab on 7/19/24.
//

import SwiftUI

struct BibleTextView: View {
    var body: some View {
        VStack {
            Picker("Select Book", selection: .constant(1)) {
                Text("Genesis").tag(1)
                Text("Exodus").tag(2)
                Text("John").tag(1)
                Text("Mattiw").tag(2)
                // Add more books here
            }
            .pickerStyle(MenuPickerStyle())

            Text("In the beginning, God created the heavens and the earth...")
                .padding()
                .font(.body)
            
            Spacer()
        }
        .navigationBarTitle("Bible", displayMode: .inline)
    }
}

struct BibleTextView_Previews: PreviewProvider {
    static var previews: some View {
        BibleTextView()
    }
}
