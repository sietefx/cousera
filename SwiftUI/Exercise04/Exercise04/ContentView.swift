//
//  ContentView.swift
//  Exercise04
//
//  Created by Gabriel Felix on 09/07/25.
//

import SwiftUI

// 1. MODELO DE DADOS
class Cart: ObservableObject {
    @Published var items: [String] = []

    func add(item: String) {
        items.append(item)
    }
}

// 2. TELA PRINCIPAL
struct ContentView: View {
    @StateObject var cart = Cart() // <- CRIA e mantém o estado

    var body: some View {
        TabView {
            ProdutoView(cart: cart)
                .tabItem {
                    Label("Produtos", systemImage: "cart.badge.plus")
                }

            CarrinhoView(cart: cart)
                .tabItem {
                    Label("Carrinho", systemImage: "cart")
                }
        }
    }
}

// 3. VIEW DE PRODUTOS
struct ProdutoView: View {
    @ObservedObject var cart: Cart // <- RECEBE o objeto

    var body: some View {
        VStack(spacing: 20) {
            Text("Escolha um produto")

            Button("Adicionar Maçã") {
                cart.add(item: "Maçã")
            }

            Button("Adicionar Banana") {
                cart.add(item: "Banana")
            }
        }
        .padding()
    }
}

// 4. VIEW DO CARRINHO
struct CarrinhoView: View {
    @ObservedObject var cart: Cart // <- Também RECEBE o mesmo objeto

    var body: some View {
        VStack {
            Text("Itens no carrinho:")
                .font(.headline)

            List(cart.items, id: \.self) { item in
                Text(item)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
