//
//  GameData.swift
//  game
//
//  Created by Eric Lanza on 8/16/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class GameData {
    
    var seconds: Int
    var timer: Timer
    var score: Int
    
    init(seconds: Int, timer: Timer, score: Int) {
        self.seconds = seconds
        self.timer = timer
        self.score = score
    }
}
