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
        let choiceAnswer = sender.currentTitle!
        
        
            print(choiceAnswer)
        
//        Timer.scheduledTimer(timeInterval: 0.2 , target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        
        Quiztext.text = quiz.getQuestionText()
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
    }
    
    
}

