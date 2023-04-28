//
//  ContentView.swift
//  Rose-Questionnaire
//
//  Created by Lara Marie Reimer on 28.04.23.
//

import SwiftUI
import SwiftletRadioButtonPicker

struct ContentView: View {
    @State var patientID: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 12.0) {
                        Text("Patient ID:")
                            .font(.headline)
                        
                        TextField("Enter the patient ID", text: $patientID)
                            .textFieldStyle(.roundedBorder)
                            .padding(.bottom, 20.0)
                        
                        RoseQuestion(title: "Within the last 1 year, have you ever had a severe pain across the front of your chest lasting for half an hour or more?")
                        
                        RoseQuestion(title: "Within the last 1 year, have you ever had any pain or discomfort in your chest?")
                        
                        RoseQuestion(title: "Did you get it when you walked uphill or hurry?")
                        
                        RoseQuestion(title: "Did you get it when you walked at an ordinary pace on the level?")
                    }
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Save")
                        .frame(maxWidth: .infinity)
                        .padding(5)
                }
                .buttonStyle(.borderedProminent)
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
