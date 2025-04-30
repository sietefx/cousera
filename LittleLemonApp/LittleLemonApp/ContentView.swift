//
//  ContentView.swift
//  LittleLemonApp
//
//  Created by Gabriel Felix on 08/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: NewView()) {
                    Text("Do something")
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
