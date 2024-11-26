//
//  Getir_CloneApp.swift
//  Getir-Clone
//
//  Created by Mert Aydoğan on 25.11.2024.
//

import SwiftUI

@main
struct GetirCloneApp: App {
    
    let persistenceController = PersistenceController.shared

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
