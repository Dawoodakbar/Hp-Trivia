//
//  Constants.swift
//  Hp Trivia
//
//  Created by Dawood on 06/10/2025.
//
import SwiftUI

enum Constants {
    static let hpFont = "partyLetPlain"
    
    static let previewQuestion = try! JSONDecoder().decode([Question].self, from: Data(contentsOf: Bundle.main.url(forResource: "trivia", withExtension: "json")!))[0]
}

struct InfoBackgroundImage: View {
    var body: some View {
        Image(.parchment)
            .resizable()
            .background(.brown)
            .ignoresSafeArea()
    }
}
