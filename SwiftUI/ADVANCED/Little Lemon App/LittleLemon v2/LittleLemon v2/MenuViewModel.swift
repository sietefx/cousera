//
//  MenuViewModel.swift
//  LittleLemon v2
//
//  Created by Gabriel Felix on 14/08/25.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var price: Double
    var category: Category
    var popularity: Int
    var description: String
}
