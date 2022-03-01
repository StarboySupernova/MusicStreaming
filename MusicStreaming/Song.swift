//
//  Song.swift
//  MusicStreaming
//
//  Created by Simbarashe Dombodzvuku on 2/28/22.
//

import Foundation
import SwiftUI

struct Song: Hashable {
    var id = UUID()
    var name: String
    var time: String // for now
}

