//
//  ContentView.swift
//  Landmark
//
//  Created by Gabriel Felix on 27/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes there.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
