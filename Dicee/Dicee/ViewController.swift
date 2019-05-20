//
//  ViewController.swift
//  Dicee
//
//  Created by Jan Ficko on 20/05/2019.
//  Copyright © 2019 Jan Ficko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let diceArray: [String] = [
        "dice1", "dice2", "dice3", "dice4", "dice5", "dice6"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollDice()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
    private func rollDice() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(
            named: diceArray[randomDiceIndex1]
        )
        diceImageView2.image = UIImage(
            named: diceArray[randomDiceIndex2]
        )
    }
    
}
