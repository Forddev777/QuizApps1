//
//  ViewController.swift
//  QuizApps1
//
//  Created by suriya taothongkom on 26/3/2565 BE.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var Quiztext: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    var quiz = quizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
      
        
    }
    @IBAction func choiceMade(_ sender: UIButton) {

        quiz.checkAnswer(userAnswer: sender.currentTitle!)
        

        
      updateUI()
    
    }
   func updateUI(){
        
        Quiztext.text = quiz.getQuestionText()
       choice1.setTitle(quiz.getChoice1(), for: .normal)
       choice2.setTitle(quiz.getChoice2(), for: .normal)
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
    }
    


}
