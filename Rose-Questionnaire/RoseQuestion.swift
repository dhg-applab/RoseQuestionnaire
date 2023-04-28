//
//  RoseQuestion.swift
//  Rose-Questionnaire
//
//  Created by Lara Marie Reimer on 28.04.23.
//

import SwiftUI
import SwiftletRadioButtonPicker

struct RoseQuestion: View {
    let title: String
    var selection: String = "Unknown"
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12.0) {
            Text(title)
                .font(.headline)
            
            SwiftletRadioButtonPicker(alignment: .grid, columns: 3, selection: selection)
                .radioButton(id: "Yes", name: "Yes")
                .radioButton(id: "No", name: "No")
                .radioButton(id: "Unknown", name: "I don't know")
        }
    }
}

struct RoseQuestion_Previews: PreviewProvider {
    static var previews: some View {
        RoseQuestion(title: "This is a sample question")
    }
}
