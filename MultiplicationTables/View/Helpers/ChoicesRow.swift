//
//  ChoicesRow.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct ChoicesRow: View {
    let choices: [Int]
    
    var body: some View {
        HStack {
            ForEach(0..<choices.count) { i in
                Choice(text: "\(choices[i])")
                    .onTapGesture {
                        print(choices[i])
                    }
            }
        }
    }
}

struct ChoicesRow_Previews: PreviewProvider {
    static var previews: some View {
        ChoicesRow(choices: [1, 2, 3, 4])
    }
}
