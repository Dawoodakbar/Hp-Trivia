//
//  Constants.swift
//  Hp Trivia
//
//  Created by Dawood on 06/10/2025.
//
import SwiftUI

enum Constants {
    static let hpFont = "partyLetPlain"
}

struct InfoBackgroundImage: View {
    var body: some View {
        Image(.parchment)
            .resizable()
            .background(.brown)
            .ignoresSafeArea()
    }
}
