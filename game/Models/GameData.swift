//
//  GameData.swift
//  game
//
//  Created by Eric Lanza on 8/16/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class GameData {
    
    let timer: Int
    let text: String
    let score: Int
    
    init(timer: Int, text: String, score: Int) {
        self.timer = timer
        self.text = text
        self.score = score
    }
}
