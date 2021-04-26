//
//  Question.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import Foundation
import SwiftUI

enum QuestionStatus: String {
    case unanswered = "circle"
    case answeredCorrectly = "checkmark.circle.fill"
    case answeredIncorrectly = "xmark.circle.fill"
}

struct Question {
    let table: Int
    var number = Int.random(in: 1...12)
    
    var answer: Int {
        return table * number
    }
    
    var status: QuestionStatus = .unanswered
    var statusImage: Image {
        Image(systemName: status.rawValue)
    }
}
