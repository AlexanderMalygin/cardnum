//
//  Card+CoreDataClass.swift
//  cardnum
//
//  Created by Alexader Malygin on 09.12.2019.
//  Copyright © 2019 Alexader Malygin. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Card)
public class Card: NSManagedObject {
    
    class func newCard(name: String) -> Card {
    
    let card = Card(context: CoreDataManager.sharedInstance.managedObjectContex)
    
    card.name = name
    
    return card

    }
}
