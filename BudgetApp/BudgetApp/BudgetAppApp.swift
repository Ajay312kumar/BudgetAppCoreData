//
//  BudgetAppApp.swift
//  BudgetApp
//
//  Created by Ajay kumar on 05/07/26.
//

import SwiftUI

@main
struct BudgetAppApp: App {
    
    let provider: CoreDataServices
    
    init () {
        provider = CoreDataServices()
    }
    
    
    var body: some Scene {
        WindowGroup {
            BudgetListScreen()
                .environment(\.managedObjectContext, provider.context)
        }
    }
}
