//
//  SongCell.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 2/28/22.
//

import Foundation
import SwiftUI

struct SongCell: View {
    
    var album: Album
    var song: Song
    
    var body: some View {
        
        NavigationLink(destination: PlayerView(album: album, song: song)) {
            HStack{
                ZStack {
                    Circle()
                        .frame(width: 50, height: 50, alignment: .center)
                        .foregroundColor(.blue)
                    
                    Circle()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.white)
                }
                Text(song.name)
                    .bold()
                Spacer()
                Text(song.time)
            }
            .padding(20)
        }
        .buttonStyle(.plain) //so that navigationLink does not override the custom colors of the buttons | .plain available from Swift 5.5 and ios15
        
        
    }
}
