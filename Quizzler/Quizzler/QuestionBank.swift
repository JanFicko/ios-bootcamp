//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Jan Ficko on 22/05/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(questionText: "Valentine\'s day is banned in Saudi Arabia.", answer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(questionText: "A slug\'s blood is green.", answer: true))
        
        list.append(Question(questionText: "Approximately one quarter of human bones are in the feet.", answer: true))
        
        list.append(Question(questionText: "The total surface area of two human lungs is approximately 70 square metres.", answer: true))
        
        list.append(Question(questionText: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true))
        
        list.append(Question(questionText: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false))
        
        list.append(Question(questionText: "It is illegal to pee in the Ocean in Portugal.", answer: true))
        
        list.append(Question(questionText: "You can lead a cow down stairs but not up stairs.", answer: false))
        
        list.append(Question(questionText: "Google was originally called \"Backrub\".", answer: true))
        
        list.append(Question(questionText: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", answer: true))
        
        list.append(Question(questionText: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: false))
        
        list.append(Question(questionText: "No piece of square dry paper can be folded in half more than 7 times.", answer: false))
        
        list.append(Question(questionText: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", answer: true))

    }
    
}
