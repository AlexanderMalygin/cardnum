//
//  Card+CoreDataProperties.swift
//  cardnum
//
//  Created by Alexader Malygin on 09.12.2019.
//  Copyright © 2019 Alexader Malygin. All rights reserved.
//
//

import Foundation
import CoreData


extension Card {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Card> {
        return NSFetchRequest<Card>(entityName: "Card")
    }

    @NSManaged public var name: String?
    @NSManaged public var cardNumber: String?

}
