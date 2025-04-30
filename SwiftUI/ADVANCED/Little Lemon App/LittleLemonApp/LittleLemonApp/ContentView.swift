//
//  ContentView.swift
//  LittleLemonApp
//
//  Created by Gabriel Felix on 11/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                
                HStack {
                    Text("Little Lemmon Menu")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 6)
                .background(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 2)
                Spacer()
                
                MenuItemsView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ContentView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
