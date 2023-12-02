//
//  iTourApp.swift
//  iTour
//
//  Created by Алексей Пурис on 02.12.2023.
//

import SwiftUI
import SwiftData

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                
        }
        .modelContainer(for: Destination.self) //modify window group for SwiftData
    }
}
