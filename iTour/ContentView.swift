//
//  ContentView.swift
//  iTour
//
//  Created by Алексей Пурис on 02.12.2023.
//  

import SwiftUI
import SwiftData

struct ContentView: View {
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
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
