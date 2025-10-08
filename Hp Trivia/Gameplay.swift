//
//  Gameplay.swift
//  Hp Trivia
//
//  Created by Dawood on 08/10/2025.
//

import SwiftUI

struct Gameplay: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("hogwarts")
                    .resizable()
                    .frame(width: geo.size.width * 3, height: geo.size.height * 1.05)
                    .overlay {
                        Rectangle().foregroundColor(.black.opacity(0.7 ))
                    }
                
                VStack {
                    
                    HStack {
                        Button ("End Game" ) {
                            
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.red.opacity(0.6))
                        
                        Spacer()
                        
                        Text("Score: 33")
                    }
                    .padding()
                    .padding(.vertical, 30)
                    
                    Text("Who is Harry Potter?")
                        .font(.custom(Constants.hpFont, size: 50))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()
                    
                    HStack {
                        
                        Image(systemName: "questionmark.app.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .foregroundColor(.cyan)
                            .rotationEffect(.degrees(-15))
                            .padding()
                            .padding(.leading, 20)
                        
                        Spacer()
                        
                        Image(systemName: "book.closed")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundStyle(.black)
                            .frame(width: 100, height: 100)
                            .background(.cyan)
                            .cornerRadius(20)
                            .rotationEffect(.degrees(15))
                            .padding()
                            .padding(.trailing, 20)
                        
                    }
                    .padding(.bottom)
                    
                    LazyVGrid(
                        columns: [GridItem(), GridItem()]) {
                            ForEach(1..<5){ i in
                                Text("Answer \(i)")
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .padding()
                                    .frame(width: geo.size.width/2.15, height: 80)
                                    .background(.green.opacity(0.5))
                                    .cornerRadius(25)
                                
                            }
                        }
                    
                    Spacer()
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .foregroundStyle(.white)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    Gameplay()
}

