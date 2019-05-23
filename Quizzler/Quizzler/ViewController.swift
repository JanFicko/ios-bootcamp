//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Updated by Jan Ficko on 22.05.2019
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var currentQuestionNumber : Int = 0
    var pickedAnswer : Bool = false
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        nextQuestion()
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = allQuestions.list[currentQuestionNumber].questionText
        scoreLabel.text = "Score: \(score)"
        
        progressLabel.text = "\(currentQuestionNumber + 1 ) / \(allQuestions.list.count)"
        
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(currentQuestionNumber + 1)
    }
    
    func nextQuestion() {
        if currentQuestionNumber < allQuestions.list.count - 1 {
            currentQuestionNumber += 1
        } else {
            let alert = UIAlertController(
                title: "Awesome!",
                message: "You\'ve come to an end, do you want to start over?",
                preferredStyle: .alert
            )
            
            alert.addAction(
                UIAlertAction(title: "Restart", style: .default, handler: {
                    (UIAlertAction) in
                        self.startOver()
                })
            )
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        if allQuestions.list[currentQuestionNumber].answer == pickedAnswer {
            score += 1
            
            ProgressHUD.showSuccess("Correct")
        } else {
            ProgressHUD.showError("Wrong")
        }
    }
    
    
    func startOver() {
        currentQuestionNumber = 0
        score = 0
        
        updateUI()
    }
    
}
