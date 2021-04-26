//
//  Progress.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct Progress: View {
    let images: [Image]

    var body: some View {
        HStack {
            ForEach(0..<images.count) {
                images[$0]
            }
        }
    }
}

//struct Progress_Previews: PreviewProvider {
//    static var previews: some View {
//        Progress(images: [
//            Question(table: 4).statusImage,
//            Question(table: 4).statusImage,
//            Question(table: 4).statusImage,
//            Question(table: 4).statusImage,
//            Question(table: 4).statusImage
//        ])
//    }
//}
