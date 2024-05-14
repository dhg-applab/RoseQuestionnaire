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
                // Teil 1: Hier einfachen Bildschirm implementieren
            }
            .navigationTitle("Rose Questionnaire")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
