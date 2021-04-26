//
//  QuestionView.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct QuestionView: View {
    @Binding var game: GameModel
    let choices: [Int]
    
    @State private var rotationAmount = 0.0

    
    var body: some View {
        VStack {
            Text("\(game.questions[game.currentQuestion].table) x \(game.questions[game.currentQuestion].number)")
                .font(.largeTitle)
                .padding()
                .offset(y: -25)
                .rotation3DEffect(
                    .degrees(rotationAmount),
                    axis: (x: 0.0, y: 1.0, z: 0.0))
            
            HStack {
                ForEach(0..<choices.count) { i in
                    Choice(text: "\(choices[i])")
                        .rotation3DEffect(
                            .degrees(rotationAmount),
                            axis: (x: 0.0, y: 0.0, z: 1.0))
                        .onTapGesture {
                            if choices[i] == game.questions[game.currentQuestion].answer {
                                game.questions[game.currentQuestion].status = .answeredCorrectly
                                game.correct += 1
                            } else {
                                game.questions[game.currentQuestion].status = .answeredIncorrectly
                            }
                            
                            withAnimation {
                                rotationAmount += 360
                                game.currentQuestion += 1
                            }
                            
                            if (game.currentQuestion == game.numberOfQuestions) {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    withAnimation {
                                        game.state = .over
                                    }
                                }
                            }
                        }
                }
            }
        }
    }
}

//struct QuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionView(question: Question(table: 9), choices: [
//            Int.random(in: 1...12),
//            Int.random(in: 1...12),
//            Int.random(in: 1...12),
//            Int.random(in: 1...12)
//        ].shuffled(), current: .constant(1), status: .constant(.unanswered))
//    }
//}
