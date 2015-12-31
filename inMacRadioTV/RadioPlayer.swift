//
//  RadioPlayer.swift
//  inMacRadio
//
//  Created by Gleb Karpushkin on 14/11/15.
//  Copyright © 2015 Gleb Karpushkin. All rights reserved.
//

import Foundation
import AVFoundation

public var isPlaying: Bool?
public var player = AVPlayer(URL: NSURL(string: "http://fm54.ru:8000/play.m3u")!)

public class RadioPlayer {
    
    static let sharedInstance = RadioPlayer()
    
    
    func play() {
        player.play()
        isPlaying = true
        
    }
    
    func pause() {
        player.pause()
        isPlaying = false
        
    }
    
    func toggle() {
        if isPlaying == true {
            pause()
        } else {
            play()
        }
    }
    
    func currentlyPlaying() -> Bool {
        return isPlaying!
    }
    
}