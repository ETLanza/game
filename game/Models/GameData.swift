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
    var score: Int
    
    init(seconds: Int, score: Int = 0) {
        self.seconds = seconds
        self.score = score
    }
}
