//
//  ContentView.swift
//  Exercise03
//
//  Created by Gabriel Felix on 08/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "You can long press and then drag"


    var body: some View {
        let longPress = LongPressGesture()
            .onEnded { _ in
            print("Long Press detected. Now you can drag me")
            }


        let drag = DragGesture()
            .onChanged{ _ in
                print ("Dragging…")
            }


        let sequence = longPress.sequenced(before: drag)


        Image("LittleLemon_Logo")
        .gesture(sequence)
    }
}


#Preview {
    ContentView()
}
