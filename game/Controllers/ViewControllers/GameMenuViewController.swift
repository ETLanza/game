//
//  GameMenuViewController.swift
//  game
//
//  Created by Owen Henley on 8/16/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import UIKit

class GameMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		GameObjectController.getAllData { (success) in
			if success {
				print("this worked")
			}
		}
    }
    
	@IBAction func playGameButtonTapped(_ sender: UIButton) {
		performSegue(withIdentifier: "toGameVC", sender: sender)
		// start timer
		// set a new charade
	}
}
