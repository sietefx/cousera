//
//  MainView.swift
//  Lemon App View Exercise
//
//  Created by Gabriel Felix on 26/06/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Color.green.opacity(0.5)
                        .ignoresSafeArea()
                    HStack(spacing: 8) {
                        Text("Demo")
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .center)
                        VStack(spacing: 10) {
                            Text("Little Lemon")
                                .font(.title)
                            Text("Tomato Tortelini, Botarga and Carbonara")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                    .padding()
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
