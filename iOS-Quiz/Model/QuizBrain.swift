//
//  QuizBrain.swift
//  iOS-Quiz
//
//  Created by Muthukumar on 05/01/2020.
//  Copyright © 2020 Muthu. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Questions(q: "A slug's blood is green.", a: "True"),
        Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Questions(q: "Google was originally called 'Backrub'.", a: "True"),
        Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var position = 0
    var myScore = 0
    
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        
        if userAnswer == quiz[position].answer {
            self.myScore += 1
            return true
        } else {
            return false
        }
    }
    
    func getTitle() -> String {
        return quiz[position].questionText
    }
    
    //MARK - percentage calculation
    func getProgressPercentage() -> Float {
        return Float(position + 1) / Float(quiz.count)
    }
    
    //MARK -next pressed
    mutating func nextQuestion() {
        if position + 1 < quiz.count {
            self.position += 1
        } else {
            self.position  = 0
            self.myScore = 0
        }
    }
    
    
    func getScore() -> String {
        return String(self.myScore)
    }
}
