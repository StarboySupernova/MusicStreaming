//
//  MusicStreamingApp.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 2/28/22.
//

import SwiftUI
import Firebase

@main
struct MusicStreamingApp: App {
    
    let data = MusicData()
    
    init() {
        FirebaseApp.configure()
        data.loadAlbums()
    }
    
    var body: some Scene {
        WindowGroup {
            AlbumView(data: data)
        }
    }
}
