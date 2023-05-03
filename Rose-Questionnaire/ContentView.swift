//
//  ContentView.swift
//  Rose-Questionnaire
//
//  Created by Lara Marie Reimer on 28.04.23.
//

import SwiftUI

struct ContentView: View {
    @State var patientID: String = ""
    @State var question1: String = ""
    @State var question2: String = ""
    @State var question3: String = ""
    @State var question4: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                ScrollView {
                    VStack(alignment: .center) {
                        Text("Patient ID:")
                            .font(.headline)
                        
                        TextField("Enter the patient ID", text: $patientID)
                            .textFieldStyle(.roundedBorder)
                            .padding(.bottom, 20.0)
                        
                        RoseQuestionView(
                            title: "Within the last 1 year, have you ever had a severe pain across the front of your chest lasting for half an hour or more?",
                            selection: $question1)

                        RoseQuestionView(
                            title: "Within the last 1 year, have you ever had any pain or discomfort in your chest?",
                            selection: $question2)

                        RoseQuestionView(
                            title: "Did you get it when you walked uphill or hurry?",
                            selection: $question3)

                        RoseQuestionView(
                            title: "Did you get it when you walked at an ordinary pace on the level?",
                            selection: $question4)
                        
                        Button(action: resetQuestionnaire) {
                            Label("Repeat", systemImage: "repeat")
                                .tint(.red)
                        }
                        .padding()
                    }
                }
                .scrollDismissesKeyboard(.immediately)
                
                Spacer()
                
                ShareLink(item: convertToCSV(answers)) {
                    Text("Save")
                        .frame(maxWidth: .infinity)
                        .padding(5)
                }
                .buttonStyle(.borderedProminent)
                .disabled(saveButtonDisabled)
            }
            .navigationTitle("Rose Questionnaire")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
