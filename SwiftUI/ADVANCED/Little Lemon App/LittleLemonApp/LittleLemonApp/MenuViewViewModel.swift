//
//  Model.swift
//  LittleLemonApp
//
//  Created by Gabriel Felix on 13/08/25.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var price: String
    var category: Category
    var popularity: Int
    var description: String
}

enum Category: String, CaseIterable {
    case food = "Food"
    case dessert = "Dessert"
    case drink = "Drink"
}

enum SortOption: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price"
    case aToZ = "A - Z"
}
