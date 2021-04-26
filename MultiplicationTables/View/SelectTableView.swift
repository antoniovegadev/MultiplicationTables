//
//  Menu.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct SelectTableView: View {
    @Binding var state: MenuState
    @Binding var game: GameModel
    
    var body: some View {
        VStack {
            Text("Pick a table to practice")
                .font(.title)
                .padding()
            
            VStack(spacing: 10) {
                ForEach(0..<4) { row in
                    HStack(spacing: 10) {
                        ForEach(0..<3) { col in
                            Choice(text: "\(row * 3 + col + 1)")
                                .onTapGesture {
                                    withAnimation {
                                        state = .selectQuestions
                                        game.table = row * 3 + col + 1
                                    }
//                                    print("\(row * 3 + col + 1)")
                                }
                        }
                    }
                }
            }
        }
    }
}

struct SelectTableView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTableView(state: .constant(.selectTable), game: .constant(GameModel()))
    }
}
