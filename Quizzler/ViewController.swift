//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questions : [Question] = []
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // View loaded, reset the game
        startOver()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
    }
    
    
    func updateUI() {
        scoreLabel.text = String(score)
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        
    }
    
    
    func startOver() {
        
        score  = 0
        questionNumber = 0
        
        questions = fetchQuestions()
        
        updateUI()
        
    }
    
    
    func fetchQuestions() -> [Question] {
        // Fetch questions
        // Shuffle them
        // Return the shuffled list
        // In the future get this from a file/URI
        
        var unordered_questions : [Question] = []
        
        unordered_questions.append(Question(text:"Blue is a good color.", correctAnswer: true))
        unordered_questions.append(Question(text:"Maude is a street.", correctAnswer: true))
        unordered_questions.append(Question(text:"There are 24 letters in the alphabet.", correctAnswer: false))
        
        return unordered_questions.shuffled()
        
    }
    

    
}
