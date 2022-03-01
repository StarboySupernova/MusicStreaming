//
//  Album.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 2/28/22.
//

import Foundation
import SwiftUI

struct Album: Hashable {
    var id = UUID()
    var name: String
    var image: String
    var songs: [Song]
}

