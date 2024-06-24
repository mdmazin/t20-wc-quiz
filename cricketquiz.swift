//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Which player scored the first century in a T20 World Cup match?", a: ["Chris Gayle", "Brendon McCullum", "AB de Villiers"], correctAnswer: "Chris Gayle"),
        Question(q: "Which country hosted the ICC T20 World Cup in 2016?", a: ["Sri Lanka", "Sri Lanka", " India"], correctAnswer: " India"),
        Question(q: "Who is the highest wicket-taker in T20 World Cup history?", a: ["Lasith Malinga", "Shahid Afridi", "Shakib Al Hasan"], correctAnswer: "Shakib Al Hasan"),
        Question(q: "Which country hosted the ICC T20 World Cup in 2022?", a: ["Australia", "England", "South Africa"], correctAnswer: "Australia"),
        Question(q: "Who was the Player of the Tournament in the 2014 ICC T20 World Cup?", a: ["Virat Kohli", "AB de Villiers", "Brendon McCullum"], correctAnswer: "Virat Kohli"),
        Question(q: "Which bowler took a hat-trick in the 2007 T20 World Cup?", a: ["Brett Lee", "Umar Gul", "Lasith Malinga"], correctAnswer: "Brett Lee"),
        Question(q: "Who was the leading run-scorer in the ICC T20 World Cup 2012?", a: ["Mahela Jayawardene", "Shane Watson", "Chris Gayle"], correctAnswer: "Mahela Jayawardene"),
        Question(q: "Which player has taken the most catches in T20 World Cup history as a non-wicketkeeper?", a: ["AB de Villiers", "David Warner", "Dwayne Bravo"], correctAnswer: "David Warner"),
        Question(q: "Which team did Afghanistan defeat to secure their first ever victory in a T20 World Cup match?", a: ["Zimbabwe", "Ireland", " Scotland"], correctAnswer: "Ireland"),
        Question(q: "Which player has the highest individual score in a T20 World Cup final?", a: ["Marlon Samuels", "Shane Watson", "Mahela Jayawardene"], correctAnswer: "Marlon Samuels")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here. 
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

