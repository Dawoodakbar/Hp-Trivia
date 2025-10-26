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
    @Published var purchaseIDs = Set<String>()
    
    private var productIDs = ["hp4", "hp5", "hp6", "hp7"]
    private var updates: Task<Void, Never>? = nil
    
    init() {
       updates = watchForUpdates()
    }
    
    func loadProducts() async {
        do {
            products = try await Product.products(for: productIDs)
        } catch {
            print("Couldn't fetch those product: \(error)")
        }
    }
    
    func purchase(_ product: Product) async {
        do {
            let result = try await product.purchase()
            
            switch result {
                // Purchase succefull but now we have to verfiy the receipt
            case .success(let verificationResult):
                switch verificationResult {
                case .unverified(let signedType, let verificationError):
                    print("Error on \(signedType) and \(verificationError)")
                    
                case .verified(let signedType):
                    purchaseIDs.insert(signedType.productID)
                }
                // User cancelled
            case .userCancelled:
                break
            case .pending:
                break
                
            @unknown default:
                break
            }
            
        } catch {
            print("Couldn't purchase the product \(error)")
        }
    }
        
        func checkPurchase() async {
            for product in products {
                guard let state = await product.currentEntitlement else { return }
                
                switch state {
                case .unverified(let signedType, let verificationError):
                    print("Error at \(signedType), and \(verificationError)")
                    
                case .verified(let signedType):
                    if signedType.revocationDate == nil {
                        purchaseIDs.insert(signedType.productID)
                    } else {
                        purchaseIDs.remove(signedType.productID)
                    }
                }
            }
        }
        
        private func watchForUpdates() -> Task<Void, Never> {
            Task(priority: .background) {
                for await _ in Transaction.updates {
                   await checkPurchase()
                }
            }
        }
    }

