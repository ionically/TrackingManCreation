//
//  ContentViewModel.swift
//  SampleMusicFile
//
//  Created by chandni chaudhari on 06/11/22.
//
import AVFoundation
import Foundation


class ContentViewModel: ObservableObject {
    let player = AVQueuePlayer()
    func playSound() {
        if let url = Bundle.main.url(forResource: "ManWalkingMusic", withExtension: "m4a") {
            player.removeAllItems()
            player.insert(AVPlayerItem(url: url), after: nil)
            player.play()
        }
    }
    func stopSound() {
        player.pause()
    }

    func getVideoURL() -> URL? {
        if let url = Bundle.main.url(forResource: "ManWalkingVideo2", withExtension: "mp4") {
            return url
        }
        return nil
    }
    
}
