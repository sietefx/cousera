//
//  MenuItemsOptionView.swift
//  LittleLemonApp
//
//  Created by Gabriel Felix on 11/08/25.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var selectedCategory: Category
    @Binding var selectedSortOption: SortOption
    
    var body: some View {
        VStack(spacing: 16) {
            
            Picker("Category", selection: $selectedCategory) {
                ForEach(Category.allCases, id: \.self) { category in
                    Text(category.rawValue).tag(category)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            Menu {
                ForEach(SortOption.allCases, id: \.self) { option in
                    Button(action: { selectedSortOption = option }) {
                        HStack {
                            Text(option.rawValue)
                            if selectedSortOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            } label: {
                HStack {
                    Text("Sort by: \(selectedSortOption.rawValue)")
                        .foregroundColor(.primary)
                    Image(systemName: "chevron.down")
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
            }
            .padding(.horizontal)
        }
        .padding(.vertical)
        .background(Color(.systemBackground))
    }
}
struct MenuItemsView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
