//
//  quizBrain.swift
//  QuizApps1
//
//  Created by suriya taothongkom on 28/3/2565 BE.
//

import Foundation
struct quizBrain{
    
            let exsample = Story(Title: "You see a fork in the road.",
                                 Choice1: "Take a left",
                                 Choice2: "Take a right.")
    
    
    
    
    var questionNumber = 0
    func getQuestionText() -> String {
        
        return exsample.Title
    }
    
    
}

