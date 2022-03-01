//
//  MusicData.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 3/1/22.
//

import Foundation
import SwiftUI
import Firebase

class MusicData : ObservableObject {
    @Published public var albums = [Album]()
    
    func loadAlbums() {
        Firestore.firestore().collection("albums").getDocuments { snapshot, error in
            if error == nil {
                for document in snapshot!.documents {
                    let name = document.data()["name"] as? String ?? "error"
                    //let time = document.data()["time"] as? String ?? "error"
                    let image = document.data()["image"] as? String ?? "angelsalbumcover"
                    let songs = document.data()["songs"] as? [String : [String: Any]]
                    
                    var songsArray = [Song]()
                    if let songs = songs {
                        for song in songs {
                            let songName = song.value["name"] as? String ?? "error"
                            let songTime = song.value["time"] as? String ?? "error"
                            songsArray.append(Song(name: songName, time: songTime))
                        }
                    }
                    
                    self.albums.append(Album(name: name, image: image, songs: songsArray))
                }
            } else {
                print(error!)
            }
        }
    }
}
