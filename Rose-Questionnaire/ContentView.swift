//
//  ContentView.swift
//  Rose-Questionnaire
//
//  Created by Lara Marie Reimer on 28.04.23.
//

import SwiftUI

struct ContentView: View {
    
    // Hinweis: Diese `Variablen` sind für die Antworten auf vier Fragen.
    // Sie sind erst bei Teil 2 relevant.
    @State var question1 = ""
    @State var question2 = ""
    @State var question3 = ""
    @State var question4 = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("ukb-logo")
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Within the last 1 year, have you ever had a severe pain across the front of your chest lasting for half an hour or more?")
                        .font(.headline)

                    Text("Within the last 1 year, have you ever had any pain or discomfort in your chest?")
                        .font(.headline)

                    Text("Did you get it when you walked uphill or hurry?")
                        .font(.headline)

                    Text("Did you get it when you walked at an ordinary pace on the level?")
                        .font(.headline)
                }
                
                Spacer()
                
                Text("Repeat")
                    .foregroundStyle(.red)
            }
            .navigationTitle("Rose Questionnaire")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
