//
//  PlayerView.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 3/1/22.
//

import Foundation
import SwiftUI

struct PlayerView: View {
    
    var album: Album
    var song: Song
    
    @State private var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            Image(album.image)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            Blur(style: .dark)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                AlbumArt(album: album, isWithText: false)
                Text(song.name)
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .foregroundColor(.white)
                Spacer()
                ZStack {
                    Color.white
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    
                    HStack{
                        Button(action: {
                            self.previous()
                        }, label: {
                            Image(systemName: "arrow.left.circle")
                                .resizable()
                        })
                            .foregroundColor(.black)
                            .opacity(0.2)
                            .frame(width: 50, height: 50, alignment: .center)
                        
                        Button(action: {
                            self.playPause()
                        }, label: {
                            Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                                .resizable()
                        })
                            .frame(width: 70, height: 70, alignment: .center)
                            .padding()
                        
                        Button(action: {
                            self.next()
                        }, label: {
                            Image(systemName: "arrow.right.circle")
                                .resizable()
                        })
                            .foregroundColor(.black)
                            .opacity(0.2)
                            .frame(width: 50, height: 50, alignment: .center)
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .frame(height: 200, alignment: .center)
            }
        }
    }
    
    func playPause() {
        self.isPlaying.toggle() // for simulation purposes only
    }
    
    func next() {
        
    }
    
    func previous() {
        
    }
}
