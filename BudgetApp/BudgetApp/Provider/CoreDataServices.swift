//
//  CoreDataServices.swift
//  BudgetApp
//
//  Created by Ajay kumar on 05/07/26.
//

import Foundation
import CoreData

class CoreDataServices {
    
    let persistContainer: NSPersistentContainer
    
    var context: NSManagedObjectContext {
        return persistContainer.viewContext
    }
    
    
    init(isMemory: Bool = false) {
        
        persistContainer = NSPersistentContainer(name: "BudgetAppModel")
        
        if isMemory {
            persistContainer.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        
        persistContainer.loadPersistentStores { _, error in
            if let error {
                fatalError("Core Data store failed to be initialize \(error.localizedDescription)")
            }
        }
        
        
    }
    
}
