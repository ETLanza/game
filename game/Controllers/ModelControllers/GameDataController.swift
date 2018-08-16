//
//  GameDataController.swift
//  game
//
//  Created by Eric Lanza on 8/16/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class GameDataController {
    
    //MARK: - Shared Instance
    static let shared = GameDataController()
    
    //MARK: - Property
    var gameData: GameData?
    
    //MARK: - Helper Functions
    func startNewGameWith(seconds: Int) {
        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreaseTimer), userInfo: nil, repeats: true)
        let gameData = GameData(seconds: seconds, timer: timer, score: 0)
        self.gameData = gameData
    }
    
    func incrementScore() {
        guard let gameData = gameData else { print("how did the score not go up?"); return }
        gameData.score += 1
    }
    
    @objc func decreaseTimer() {
        guard let gameData = gameData else { return }
        gameData.seconds -= 1
    }
}
