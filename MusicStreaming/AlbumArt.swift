//
//  AlbumArt.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 2/28/22.
//

import Foundation
import SwiftUI

struct AlbumArt: View {
    
    var album: Album
    var isWithText : Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(album.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 170, height: 200, alignment: .center)
            
            if isWithText {
                ZStack {
                    Blur(style: .dark)
                    Text(album.name)
                        .foregroundColor(.white)
                }
                .frame(height: 60, alignment: .center)
            }
        }
        .frame(width: 170, height: 200, alignment: .center)
        .clipped()
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding(20)
    }
}
