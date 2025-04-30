//
//  SwiftUIView.swift
//  DatePicker
//
//  Created by Gabriel Felix on 27/06/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            Text("Rectangle One")
                .font(.title3)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(20)
                .background(Color(hue: 0.796, saturation: 0.879, brightness: 0.914))
                .padding()
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 30)
        }
    }
}

#Preview {
    SwiftUIView()
}
