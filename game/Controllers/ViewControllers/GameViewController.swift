//
//  GameViewController.swift
//  game
//
//  Created by Owen Henley on 8/16/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
	
	var gameData: GameData?

	@IBOutlet weak var timerLabel: UILabel!
	@IBOutlet weak var charadeLabel: UILabel!
	@IBOutlet weak var resultTotalLabel: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func gotItNextButtonTapped(_ sender: UIButton) {
		// add 1 to score
		GameDataController.shared.incrementScore()
		// update lable with new charade
		
		randomCharade()
	}
	
	@IBAction func passButtonTapped(_ sender: UIButton) {
		randomCharade()
	}
	
	@IBAction func newGameButton(_ sender: UIButton) {
		navigationController?.popViewController(animated: true)
	}
	
	func randomCharade() {
		let index = Int(arc4random_uniform(UInt32(GameObjectController.shared.objects.count)))
		let charade = GameObjectController.shared.objects[index]
		charadeLabel.text = charade.text
	}
}
