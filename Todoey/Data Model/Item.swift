//
//  Item.swift
//  Todoey
//
//  Created by SHAUN BONCKER on 13/4/19.
//  Copyright © 2019 ShaunB. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
