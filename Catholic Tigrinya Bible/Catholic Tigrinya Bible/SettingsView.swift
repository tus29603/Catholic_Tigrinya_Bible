//
//  SettingsView.swift
//  Catholic Tigrinya Bible
//
//  Created by Tesfaldet Haileab on 7/19/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Form {
            Section(header: Text("Display Settings")) {
                // Add settings options here
                Toggle("Dark Mode", isOn: .constant(false))
                Slider(value: .constant(14), in: 10...24, step: 1) {
                    Text("Font Size")
                }
            }
        }
        .navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

