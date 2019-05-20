//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jan Ficko on 20/05/2019.
//  Copyright © 2019 Jan Ficko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivBall: UIImageView!
    
    let ballArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomAnswer()
    }
    
    @IBAction func onClickAsk(_ sender: UIButton) {
        randomAnswer()
    }
    
    private func randomAnswer() {
        randomBallNumber = Int.random(in: 0 ... 4)
        
        ivBall.image = UIImage(named: ballArray[randomBallNumber])
    }


}

