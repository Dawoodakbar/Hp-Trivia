//
//  InstructionsView.swift
//  Hp Trivia
//
//  Created by Dawood on 06/10/2025.
//

import SwiftUI

struct InstructionsView: View {
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
            InfoBackgroundImage()
            
            VStack {
                Image(.appiconwithradius)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.top)
                
                ScrollView {
                    Text("How To Play")
                        .font(.largeTitle)
                        .padding()
                    
                    Text("Welcom to HP Trivia! In this game, you will be asked random questions from the HP Books and you must guess the right answer or you will lose points!😱")
                        .padding([.horizontal, .bottom])
                    
                    Text("Each question is worth 5 points, but if u guess a wrong answer you will lose 1 point.")
                        .padding([.horizontal, .bottom])
                    
                    Text("If you are struggling with a question, there is a option to reveal a hint or reveal a book that answers the question. But beware! Using this will aslo minuses 1 point each.")
                        .padding([.horizontal, .bottom])
                    
                    Text("When you select the correct answer, you will be awarded all the points left for that question and they will be added to your total score.")
                        .padding(.horizontal)
                    
                    Text("Good luck")
                        .font(.title)
                       
                }
                .font(.title3)
                .foregroundStyle(.black)
                
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .foregroundStyle(.white)
            }
           
            
            
                
        }
        
    }
}

#Preview {
    InstructionsView()
}
