//
//  SettingView.swift
//  Hp Trivia
//
//  Created by Dawood on 07/10/2025.
//

import SwiftUI

enum BooksStatus {
    case active
    case inactive
    case locked
}

struct SettingView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var books: [BooksStatus] = [
        .active,
        .active,
        .inactive,
        .inactive,
        .locked,
        .locked,
        .locked
    ]
    
    var body: some View {
        ZStack {
            InfoBackgroundImage()
            
            VStack {
                
                Text("Which books would you like to see questions from?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ForEach(0..<7) { i in
                            if books[i] == .active {
                                ZStack(alignment: .bottomTrailing) {
                                    Image("hp\(i+1)")
                                        .resizable()
                                        .scaledToFit()
                                        .shadow(radius: 7)
                                    
                                    Image(systemName: "checkmark.circle.fill")
                                        .font(.largeTitle)
                                        .imageScale(.large)
                                        .foregroundColor(.green)
                                        .padding(3)
                                        .shadow(radius: 1)
                                }
                                .onTapGesture {
                                    books[i] = .inactive
                                }
                            } else if books[i] == .inactive {
                                ZStack(alignment: .bottomTrailing) {
                                    Image("hp\(i+1)")
                                        .resizable()
                                        .scaledToFit()
                                        .shadow(radius: 7)
                                        .overlay(Rectangle().opacity(0.33))
                                    
                                    Image(systemName: "circle")
                                        .font(.largeTitle)
                                        .imageScale(.large)
                                        .foregroundStyle(.green.opacity(0.5))
                                    
                                        .padding(3)
                                        .shadow(radius: 1)
                                }
                                .onTapGesture {
                                    books[i] = .active
                                }
                                
                            } else {
                                ZStack {
                                    Image("hp\(i+1)")
                                        .resizable()
                                        .scaledToFit()
                                        .shadow(radius: 7)
                                        .overlay(Rectangle().opacity(0.75))
                                    
                                    Image(systemName: "lock.fill")
                                        .font(.largeTitle)
                                        .imageScale(.large)
                                        .shadow(color: .white.opacity(0.75),radius: 1)
                                }
                            }
                        }
                    }
                    .padding()
                }
                
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    SettingView()
}
