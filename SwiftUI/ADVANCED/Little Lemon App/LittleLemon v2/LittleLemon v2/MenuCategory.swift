//
//  MenuCategory.swift
//  LittleLemon v2
//
//  Created by Gabriel Felix on 14/08/25.
//

import Foundation

enum Category: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum SortOption: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case aToZ = "A - Z"
}
