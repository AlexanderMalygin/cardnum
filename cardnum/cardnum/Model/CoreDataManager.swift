//
//  CoreDataManager.swift
//  cardnum
//
//  Created by Alexader Malygin on 09.12.2019.
//  Copyright © 2019 Alexader Malygin. All rights reserved.
//

import UIKit
import CoreData

var card: [Card] {
    let request = NSFetchRequest<Card>(entityName: "Card")
    
    let sortDescr = NSSortDescriptor(key: "name", ascending: true)
    request.sortDescriptors = [sortDescr]
    
    let array = try? CoreDataManager.sharedInstance.managedObjectContex.fetch(request)
    
    if array != nil {
        return array!
    }
    
    
    return []
}


class CoreDataManager {
    
    
    static let sharedInstance = CoreDataManager()
    var managedObjectContex: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "cardnum")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}
