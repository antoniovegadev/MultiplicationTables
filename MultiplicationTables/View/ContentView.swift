//
//  ContentView.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct ContentView: View {
    @State private var gameModel = GameModel()
    var body: some View {
        Group {
            switch gameModel.state {
            case .menu:
                Menu(game: $gameModel)
                    .transition(.slide)
            case .playing:
                Game(game: $gameModel)
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .top), removal: .opacity))
            case .over:
                GameOver(game: $gameModel)
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .top), removal: .scale))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
