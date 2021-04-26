//
//  SelectQuestionsView.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct SelectQuestionsView: View {
    @Binding var game: GameModel
    let questionChoices = ["5", "10", "20", "All"]
    
    var body: some View {
        VStack {
            Text("Number of questions")
                .font(.title)
                .padding()
            
            HStack {
                ForEach(0..<questionChoices.count) { i in
                    Choice(text: questionChoices[i])
                        .onTapGesture {
                            withAnimation {
                                game.state = .playing
                                game.numberOfQuestions = Int(questionChoices[i]) ?? 12
                            }
//                            print(questionChoices[i])
                        }
                }
            }
        }
    }
}

struct SelectQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectQuestionsView(game: .constant(GameModel()))
    }
}
