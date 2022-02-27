//
//  ViewController.swift
//  Quizzler-iOS13
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
     
    let quiz = [
        Question(q: "Four + Two is equal to Six.", a: "True"),
        Question(q: "Five - Three is greater than One", a: "True"),
        Question(q: "Three + Eight is less than Ten", a: "False")
    ]
    
    var questionNumber = 0
    
    // Only valid when the app loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer{
            print("Right!!")
            
        } else{
            print("Wrong!!")
        }
        
        // Check if the user reaches till the end of the quiz
        if questionNumber < quiz.count - 1{
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        
        updateUI()
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
    }
    
}

