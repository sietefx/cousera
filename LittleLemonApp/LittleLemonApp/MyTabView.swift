//
//  MyTabView.swift
//  LittleLemonApp
//
//  Created by Gabriel Felix on 08/07/25.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack {
            TabView {
                Text("This is the Share View")
                    .tabItem({
                        Label("", systemImage: "square.and.arrow.up")
                    })
                Text("This is the Trash View")
                    .tabItem({
                        Label("", systemImage: "trash")
                    })
            }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
