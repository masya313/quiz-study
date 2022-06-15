//
//  ViewController.swift
//  quiz-study
//
//  Created by Anastasia Krylova on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.layer.cornerRadius = 25
        secondButton.layer.cornerRadius = 25
        threeButton.layer.cornerRadius = 25
        updateUi()
    }
    
    @IBAction func answerButtomPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let check = quizBrain.checkAnswer(userAnswer)


        if check {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        quizBrain.nextQwestion()
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
            self.updateUi()
        }
        
    }
    
    func updateUi() {
        questionLabel.text = quizBrain.getQwestionText()
        let answers = quizBrain.getQwestionAnswer()
        firstButton.setTitle(answers[0], for: .normal)
        secondButton.setTitle(answers[1], for: .normal)
        threeButton.setTitle(answers[2], for: .normal)
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        firstButton.backgroundColor = .clear
        secondButton.backgroundColor = .clear
        threeButton.backgroundColor = .clear
        progressBar.setProgress(quizBrain.getProgress(), animated: true)
    }
}

