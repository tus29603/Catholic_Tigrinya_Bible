//
//  SplashScreenView.swift
//  Catholic Tigrinya Bible
//
//  Created by Tesfaldet Haileab on 7/19/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false

    var body: some View {
        VStack {
            if isActive {
                HomeView()
            } else {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Text("Tigrinya Bible")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

