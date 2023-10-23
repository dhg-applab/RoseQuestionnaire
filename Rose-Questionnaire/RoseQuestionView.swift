//
//  RoseQuestion.swift
//  Rose-Questionnaire
//
//  Created by Lara Marie Reimer on 28.04.23.
//

import SwiftUI

struct RoseQuestionView: View {
    let title: String
    @Binding var selection: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            Picker("", selection: $selection) {
                Text("Yes")
                    .tag("Positive")
                
                Text("No")
                    .tag("Negative")
                
                Text("I don't know")
                    .tag("Unknown")
            }
            .pickerStyle(.segmented)
        }
        .padding(.vertical)
    }
}

#Preview {
    RoseQuestionView(title: "This is a sample question", selection: .constant(""))
}
