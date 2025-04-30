//
//  GestureRecognizer.swift
//  Exercise04
//
//  Created by Gabriel Felix on 09/07/25.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag = false
    var body: some View {
        Text("Tap Me")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(15)
            .background(flag ? Color.green : Color.yellow)
            .onTapGesture {
                flag.toggle()
        }
    }
}

#Preview {
    GestureRecognizer()
}
