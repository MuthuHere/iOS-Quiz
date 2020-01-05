//
//  ViewController.swift
//  iOS-Quiz
//
//  Created by Muthukumar on 05/01/2020.
//  Copyright © 2020 Muthu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        updateUI()
    }
    
    
    func updateUI(){
        questionLabel.text = quizBrain.getTitle()
        
        self.scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self , selector: #selector(updateButton), userInfo: nil, repeats: false)
        
        progressBar.progress = quizBrain.getProgressPercentage()
        
    }
    
    
    //function to revert back the button UI
    @objc func updateButton(){
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

