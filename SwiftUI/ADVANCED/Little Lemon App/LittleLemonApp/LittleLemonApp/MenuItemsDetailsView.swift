//
//  MenuItemsDetailsView.swift
//  LittleLemonApp
//
//  Created by Gabriel Felix on 11/08/25.
//
import SwiftUI

struct MenuItemDetailView: View {
    var item: MenuItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Group {
                    if let uiImage = UIImage(named: item.imageName) {
                        Image(uiImage: uiImage)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .clipped()
                            .cornerRadius(12)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                            )
                            
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .foregroundStyle(.gray)
                    }
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    Text(item.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)
                    
                    // Preço
                    Text(item.price)
                        .font(.title2)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 8)
                    
                    // Popularidade
                    HStack(spacing: 4) {
                        ForEach(0..<5, id: \.self) { index in
                            Image(systemName: index < item.popularity ? "star.fill" : "star")
                                .foregroundColor(index < item.popularity ? .yellow : .gray)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 12)
                    
                    // Categoria
                    Text(item.category.rawValue)
                        .font(.headline)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(20)
                        .padding(.bottom, 16)
                    
                    // Descrição do produto
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Descrição")
                            .font(.headline)
                            .padding(.bottom, 4)
                        
                        Text(item.description)
                            .font(.body)
                            .foregroundColor(.secondary)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                }
            }
        }
    }
}


    
struct MenuItemsDetails_PreviewProvider: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
