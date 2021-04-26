//
//  Choice.swift
//  MultiplicationTables
//
//  Created by Antonio Vega on 4/25/21.
//

import SwiftUI

struct Choice: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .bold()
            .frame(width: 80, height: 80)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .shadow(radius: 7)
    }
}

struct Choice_Previews: PreviewProvider {
    static var previews: some View {
        Choice(text: "12")
    }
}
