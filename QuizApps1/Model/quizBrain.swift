//
//  quizBrain.swift
//  QuizApps1
//
//  Created by suriya taothongkom on 28/3/2565 BE.
//

import Foundation
struct quizBrain{
    var questionNumber = 0
    let exsample = [
            Story(
                Title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
                Choice1: "I'll hop in. Thanks for the help!",
                Choice2: "Better ask him if he's a murderer first.",
                choice1Destination: 2,
                choice2Destination: 1
            ),
            Story(
                Title: "He nods slowly, unfazed by the question.",
                Choice1: "At least he's honest. I'll climb in.",
                Choice2: "Wait, I know how to change a tire.",
                choice1Destination: 2,
                choice2Destination: 3
            ),
            Story(
                Title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                       Choice1: "I love Elton John! Hand him the cassette tape.",
                      
                       Choice2: "It's him or me! You take the knife and stab him.",
                choice1Destination: 5,
                choice2Destination: 4
                   ),
                   Story(
                    Title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                       Choice1: "The",
                       Choice2: "End",
                    choice1Destination: 0,
                    choice2Destination: 0
                   ),
                   Story(
                    Title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                       Choice1: "The",
                      
                       Choice2: "End",
                        choice1Destination: 0,
                       choice2Destination: 0
                   ),
                   Story(
                    Title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                       Choice1: "The",
                    
                       Choice2: "End",
                    choice1Destination: 0,
                       choice2Destination: 0
                   )
                ]
    
    func getQuestionText() -> String {
        
        return exsample[questionNumber].Title
      
    }
    func getChoice1() -> String {
        
        return exsample[questionNumber].Choice1
    }
    func getChoice2() -> String {
        
        return exsample[questionNumber].Choice2
    }
    mutating func  checkAnswer(userAnswer: String){
        let currentStory = exsample[questionNumber]
        if userAnswer == currentStory.Choice1{
            questionNumber = currentStory.choice1Destination
        }else if userAnswer  == currentStory.Choice2{
            questionNumber = currentStory.choice2Destination
        }
            
    }
        
    
    
    
    
}

