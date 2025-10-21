//
//  Store.swift
//  Hp Trivia
//
//  Created by Dawood Akbar on 21/10/2025.
//

import Foundation
import StoreKit
internal import Combine

enum BooksStatus {
    case active
    case inactive
    case locked
}
@MainActor
class Store: ObservableObject {
    @Published var books: [BooksStatus] = [
        .active,
        .active,
        .inactive,
        .locked,
        .locked,
        .locked,
        .locked
    ]
    
    @Published var products: [Product] = []
    
    private var productIDs = ["hp4", "hp5", "hp6", "hp7"]
    
    func loadProducts() async {
        do {
            products = try await Product.products(for: productIDs)
        } catch {
            print("Couldn't fetch those product: \(error)")
        }
    }
}
