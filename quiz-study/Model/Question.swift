//
//  Question.swift
//  quiz-study
//
//  Created by Anastasia Krylova on 15.06.2022.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        rightAnswer = correctAnswer
    }
}
