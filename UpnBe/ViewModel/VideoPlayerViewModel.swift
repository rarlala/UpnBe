//
//  VideoPlayerViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/09.
//

import SwiftUI
import AVKit

final class VideoPlayerViewModel: ObservableObject {
    let player: AVPlayer
    private var timeObserver: Any?
    
    @Published var currentTime: TimeInterval = 0
    @Published var duration: Float64 = 0
    
    init(url: URL) {
        self.player = AVPlayer(url: url)
    }
    
    func play() {
        player.play()
        addTimeObserver()
    }
    
    func pause() {
        player.pause()
        removeTimeObserver()
    }
    
    func moveTime(seconds: Float64) {
        let targetTime: CMTime = CMTimeMakeWithSeconds(seconds, preferredTimescale: 60)
        player.seek(to: targetTime)
    }
    
    private func addTimeObserver() {
        let interval = CMTime(seconds: 1, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
        timeObserver = player.addPeriodicTimeObserver(forInterval: interval, queue: .main, using: { [weak self] time in
            self?.currentTime = time.seconds
            guard let totalSeconds = self?.player.currentItem?.duration else { return }
            self?.duration = CMTimeGetSeconds(totalSeconds)
        })
    }
    
    private func removeTimeObserver() {
        if let timeObserver = timeObserver {
            player.removeTimeObserver(timeObserver)
            self.timeObserver = nil
            self.duration = 0
        }
    }
}
