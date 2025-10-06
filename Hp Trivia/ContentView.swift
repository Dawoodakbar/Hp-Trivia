//
//  ContentView.swift
//  Hp Trivia
//
//  Created by Dawood on 06/10/2025.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State var scalePlayButton: Bool = false
    @State var moveBackGroundImage: Bool = false
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image(.hogwarts)
                    .resizable()
                    .frame(width: geo.size.width * 3, height: geo.size.height)
                    .padding(.top, 3)
                    .offset(
                        x: moveBackGroundImage ? geo.size.width/1.1 : -geo.size.width/1.1
                    )
                    .onAppear{
                        withAnimation(.linear(duration: 60).repeatForever()) {
                            moveBackGroundImage.toggle()
                        }
                    }
                
                VStack {
                    
                    VStack {
                        Image(systemName: "bolt.fill")
                            .font(.largeTitle)
                            .imageScale(.large)
                        
                        Text("Hp")
                            .font(.custom(Constants.hpFont, size: 70))
                        
                        Text("Trivia")
                            .font(.custom(Constants.hpFont, size: 60))
                    }
                    .padding(.top, 70)
                    
                    Spacer()
                    
                    VStack {
                        Text("Recent Score")
                            .font(.title2)
                        
                        Text("37")
                        Text("24")
                        Text("53")
                    }
                    .font(.title3)
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                    .background(.black.opacity(0.7))
                    .cornerRadius(15)
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        Button {
                            // Show instruction screen
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                        
                        Button {
                            // Start new game
                        } label: {
                            Text("Play")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .padding(.vertical, 1)
                                .padding(.horizontal, 50)
                                .background(.brown)
                                .cornerRadius(7)
                                .shadow(radius: 5)
                        }
                        .scaleEffect(scalePlayButton ? 1.2 : 1)
                        .onAppear {
                            withAnimation(
                                .easeInOut(duration: 1.3).repeatForever()
                            ) {
                                scalePlayButton.toggle()
                            }
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                        
                        
                    }
                    .frame(width: geo.size.width)
                    Spacer()
                }
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
        .onAppear{
            //playAudio()
        }
    }
    
    private func playAudio() {
        
        let sound = Bundle.main.path(forResource: "magic-in-the-air",ofType: "mp3")
        audioPlayer = try! AVAudioPlayer(contentsOf: URL(filePath: sound!))
        audioPlayer.numberOfLoops = -1
        audioPlayer.play()
    }
}

#Preview {
    ContentView()
}
