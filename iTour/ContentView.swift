//
//  ContentView.swift
//  iTour
//
//  Created by Алексей Пурис on 02.12.2023.
//  

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    //Add our database. Macro @Query readout info from DB and than can display it
    @Query var destinations: [Destination]
    
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    ForEach(destinations) {destination in
                        VStack(alignment: .leading) {
                            Text(destination.name)
                                .font(.headline)
                            Text(destination.date.formatted(date: .long, time: .shortened))
                        }
                    }
                }
                .navigationTitle("iTourApp")
                .toolbar {
                    Button("Add samples", action: addSamples)
                    Button("Del samples", action: removeSamples)
                }
            }
        }
        .padding()
    }
    
    func addSamples() {
        let rome = Destination(name: "Rome")
        let florence = Destination(name: "Florence")
        let naples = Destination(name: "Naples")
        modelContext.insert(rome)
        modelContext.insert(florence)
        modelContext.insert(naples)
    }
    
    
}

#Preview {
    ContentView()
}
