//
//  GameModel.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import Foundation

enum GameState {
    case menu
    case playing
    case over
}

struct GameModel {
    var questions = [Question]()
    var table: Int = 0
    var numberOfQuestions: Int = 0 {
        didSet {
            questions = [Question]()
            for i in 0..<numberOfQuestions {
                questions.append(numberOfQuestions == 12 ? Question(table: table, number: i+1) : Question(table: table))
            }
            questions.shuffle()
            questions.append(Question(table: 0))
        }
    }
    var correct: Int = 0
    var currentQuestion = 0
    var state: GameState = .menu
}
