//
//  QuizBrain.swift
//  quiz-study
//
//  Created by Anastasia Krylova on 15.06.2022.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "Какое имя было у супруги Пушкина?", a: ["Наталья Николаевна", "Наталья Ивановна", "Анна Николаевна"], correctAnswer: "Наталья Николаевна"),
        Question(q: "Что такое Измир?", a: ["Город в Армении", "Город в Турции", "Фрукт"], correctAnswer: "Город в Турции"),
        Question(q: "Другое название гриба красноголовика – это …", a: ["Мухомор", "Сыроежка", "Подосиновик"], correctAnswer: "Подосиновик"),
        Question(q: "Как по французски «шляпа»?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "Что в прошлые времена джентльмен держал в кармане?", a: ["Блокнот", "Платок", "Часы"], correctAnswer: "Часы"),
        Question(q: "Как попрощаться по-испански?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Какой из этих цветов НЕ используется в логотипе Google?", a: ["Зеленый", "Оранжевый", "Голубой"], correctAnswer: "Оранжевый"),
        Question(q: "Какой алкогольный напиток готовят из патоки?", a: ["Ром", "Виски", "Джин"], correctAnswer: "Ром"),
        Question(q: "Этого персонажа могли сыграть Юэн МакГрегор, Леонардо ДиКаприо, Том Круз и Уилл Смит. Для того чтобы предоставить важнейший аксессуар этому персонажу был устроен тендер, который проиграли Ray-Ban и Arnette. Победила Blinde.", a: ["Вин Дизель", "Джони Депп", "Киану Ривз"], correctAnswer: "Киану Ривз"),
        Question(q: "Где находится Тасмания?", a: ["Индонезия", "Австралия", "Шотландия"], correctAnswer: "Австралия")
    ]
    
    
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQwestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getQwestionAnswer() -> [String] {
        return quiz[questionNumber].answer
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQwestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func getScore() -> Int {
        return score
    }
}
