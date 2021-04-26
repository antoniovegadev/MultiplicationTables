//
//  GameOver.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct GameOver: View {
    @Binding var game: GameModel
    
    var body: some View {
        ZStack {
            VStack {
                Text("You scored \n\(game.correct) out of \(game.numberOfQuestions)")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 250)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding(.bottom, 50)
                    .shadow(radius: 10)
                
                Button(action: {
                    withAnimation {
                        game = GameModel()
                    }
                }) {
                    Text("Play Again")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .clipShape(Capsule())
                        .shadow(radius: 7)
                    
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct GameOver_Previews: PreviewProvider {
    static var previews: some View {
        GameOver(game: .constant(GameModel()))
    }
}
