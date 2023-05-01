//
//  RoseQuestion.swift
//  Rose-Questionnaire
//
//  Created by Lara Marie Reimer on 28.04.23.
//

import SwiftUI

struct RoseQuestion: View {
    let title: String
    let answers: [String]
    @Binding var selection: String
    
    init(title: String, answers: [String] = ["Yes", "No", "I don't know"], selection: Binding<String>) {
        self.title = title
        self.answers = answers
        self._selection = selection
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12.0) {
            Text(title)
                .font(.headline)
            
            Picker("Test", selection: $selection) {
                ForEach(answers, id: \.self) {
                    Text($0)
                }
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
