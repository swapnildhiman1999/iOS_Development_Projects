//
//  CoreDataTestApp.swift
//  CoreDataTest
//
//  Created by Swapnil Dhiman on 02/12/22.
//

import SwiftUI

@main
struct CoreDataTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
