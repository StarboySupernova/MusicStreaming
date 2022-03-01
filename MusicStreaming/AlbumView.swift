//
//  ContentView.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 2/28/22.
//

import SwiftUI
import Firebase

struct AlbumView: View {
    
    @ObservedObject var data: MusicData
    @State private var currentAlbum: Album?
    
    var body: some View {
        NavigationView {
            ScrollView { //main vertical scrollview
                ScrollView(.horizontal, showsIndicators: true) { // horizontal scrolling view
                    LazyHStack{
                        ForEach(self.data.albums, id: \.self){ album in
                            AlbumArt(album: album, isWithText: true)
                                .onTapGesture {
                                    self.currentAlbum = album
                                }
                        }
                    }
                    
                }
                
                LazyVStack {
                    
                    if self.data.albums.first == nil {
                        EmptyView()
                    } else {
                        ForEach(self.currentAlbum?.songs ?? self.data.albums[0].songs, id: \.self){ song in
                            SongCell(album: currentAlbum ?? self.data.albums[0], song: song)
                        }
                    }
                }
            }
        }
        .navigationTitle("Roddi Music")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumArt(album: Album(name: "Starboy", image: "angelsalbumcover", songs: [Song(name: "Good", time: "2:13")]), isWithText: true)
    }
}
