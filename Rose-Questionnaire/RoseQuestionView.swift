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
            // Teil 2: Hier Text & Picker einfügen
        }
        .padding(.vertical)
    }
}

#Preview {
    RoseQuestionView(title: "This is a sample question", selection: .constant(""))
}
