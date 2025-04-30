//
//  MenuItensView.swift
//  LittleLemonApp
//
//  Created by Gabriel Felix on 11/08/25.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var selectedCategory: Category = .food
    @State private var selectedSortOptions: SortOption = .mostPopular
    
    @State private var allMenuItems = [
        
        MenuItem(name: "Pizza toscana", imageName: "pizza", price: "R$ 20,00", category: .food, popularity: 5, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Hamburguer Loco", imageName: "hamburguer", price: "R$ 30,00", category: .food, popularity: 4, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Pasta Fresca", imageName: "massa", price: "R$ 20,00", category: .food, popularity: 3, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Salada Cesar", imageName: "salada", price: "R$ 20,00", category: .food, popularity: 4, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Sushi Loco", imageName: "sushi", price: "R$ 30,00", category: .food, popularity: 5, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Risoto Buono", imageName: "risoto", price: "R$ 40,00", category: .food, popularity: 2, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
  
        MenuItem(name: "Musse de maracuja", imageName: "musse", price: "R$ 20,00", category: .dessert, popularity: 5, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Petit Gateux", imageName: "petit", price: "R$ 30,00", category: .dessert, popularity: 4, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Sorbet", imageName: "sorvete", price: "R$ 20,00", category: .dessert, popularity: 3, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Mil Folhas de Morango", imageName: "milfolhas", price: "R$ 30,00", category: .dessert, popularity: 10, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        
        MenuItem(name: "Negroni", imageName: "negroni", price: "R$ 30,00", category: .drink, popularity: 5, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Aperol Spritz", imageName: "aperol", price: "R$ 30,00", category: .drink, popularity: 3, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um."),
        MenuItem(name: "Moscow Mule", imageName: "moscow", price: "R$ 30,00", category: .drink, popularity: 4, description: "Aqui vai todas as descrições do item, por item, mostrando os ingredientes, texto do que contem cada um.")
    ]
    
    var filteredItems: [MenuItem] {
        let filtered = allMenuItems.filter { $0.category == selectedCategory }
        
        switch selectedSortOptions {
        case .mostPopular:
            return filtered.sorted { $0.popularity > $1.popularity }
        case .price:
            return filtered.sorted { $0.price < $1.price }
        case .aToZ:
            return filtered.sorted { $0.name < $1.name}
        }
    }
    
    private let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
     
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 0) {
                // Barra de Menu
                MenuItemsOptionView(selectedCategory: $selectedCategory, selectedSortOption: $selectedSortOptions)
                
                // Lista de itens
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(filteredItems) { item in
                            NavigationLink(destination: MenuItemDetailView(item: item)) {
                                MenuCard(item: item)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MenuCard: View {
    var item: MenuItem
    
    var body: some View {
        VStack(spacing: 8) {
            if UIImage(named: item.imageName) != nil {
                Image(item.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .clipped()
            } else {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(height: 100)
                    .foregroundStyle(.gray)
            }
            
            Text(item.name)
                .font(.system(size: 16, weight: .medium))
                .lineLimit(1)
            
            Text(item.price)
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
                    
    }
}
struct MenuItemsOptionView_PreviewProvider: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
