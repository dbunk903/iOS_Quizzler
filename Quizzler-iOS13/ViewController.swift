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
        ["Four + Two is equal to Six.","True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten","False"]
    ]
    
    var questionNumber = 0
    
    // Only valid when the app loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer{
            print("Right!!")
            
        } else{
            print("Wrong!!")
        }
        
        // Check if the user reaches till the end of the quiz
        questionNumber += 1
        if questionNumber == quiz.count{
            questionNumber =  0
        }
        updateUI()
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

