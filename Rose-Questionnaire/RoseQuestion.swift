//
//  RoseQuestion.swift
//  Rose-Questionnaire
//
//  Created by Lara Marie Reimer on 28.04.23.
//

import SwiftUI

struct RoseQuestion: View {
    let title: String
    @Binding var selection: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            Picker("", selection: $selection) {
                Text("Yes").tag("Yes")
                Text("No").tag("No")
                Text("I don't know").tag("I don't know")
            }.pickerStyle(.segmented)
        }
        .padding(.vertical)
    }
}

struct RoseQuestion_Previews: PreviewProvider {
    static var previews: some View {
        RoseQuestion(title: "This is a sample question", selection: .constant(""))
    }
}
