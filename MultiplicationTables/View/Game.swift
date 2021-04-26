//
//  Game.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct Game: View {
    @Binding var game: GameModel
    
    var progressImages: [Image] {
        var images = [Image]()
        for i in 0..<game.numberOfQuestions {
            images.append(game.questions[i].statusImage)
        }
        return images
    }

    var body: some View {
        VStack {
            Spacer()
            if game.currentQuestion != game.numberOfQuestions {
                QuestionView(game: $game,
                             choices: [
                                Int.random(in: 1...144),
                                Int.random(in: 1...144),
                                Int.random(in: 1...144),
                                game.questions[game.currentQuestion].answer].shuffled())
                    .transition(.scale)
            }
            Spacer()
            HStack {
                ForEach(0..<game.numberOfQuestions) {
                    game.questions[$0].statusImage
                        .foregroundColor(game.questions[$0].status == .unanswered ? .primary : game.questions[$0].status == .answeredCorrectly ? .green : .red)
                        .animation(.easeInOut(duration: 1.2))
                }
            }
        }
        .onAppear {
            for i in 0..<game.numberOfQuestions {
                print(game.questions[i])
            }
        }
    }
    
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game(game: .constant(GameModel()))
    }
}
