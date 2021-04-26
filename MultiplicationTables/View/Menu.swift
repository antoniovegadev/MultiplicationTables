//
//  Menu.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

enum MenuState {
    case selectTable
    case selectQuestions
}

struct Menu: View {
    @Binding var game: GameModel
    @State private var menuState: MenuState = .selectTable

    var body: some View {
        Group {
            switch menuState {
            case .selectTable:
                SelectTableView(state: $menuState, game: $game)
                    .transition(.scale)
            case .selectQuestions:
                SelectQuestionsView(game: $game)
                    .transition(.scale)
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu(game: .constant(GameModel()))
    }
}
