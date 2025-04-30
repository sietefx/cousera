//
//  CircleImage.swift
//  Landmark
//
//  Created by Gabriel Felix on 27/06/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 6)
    }
}

#Preview {
    CircleImage()
}
