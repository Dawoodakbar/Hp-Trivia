//
//  Hp_TriviaApp.swift
//  Hp Trivia
//
//  Created by Dawood on 06/10/2025.
//

import SwiftUI

@main
struct Hp_TriviaApp: App {
    @StateObject private var store = Store()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .task {
                    await store.loadProducts()
                }
        }
    }
}
