//
//  VideoPlayerViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/09.
//

import SwiftUI
import AVKit

class VideoPlayerViewModel: ObservableObject {
    let player: AVPlayer
    
    init(url: URL) {
        self.player = AVPlayer(url: url)
    }
    
    func play() {
        player.play()
    }
    
    func pause() {
        player.pause()
    }
}
