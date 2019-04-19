//
//  Category.swift
//  Todoey
//
//  Created by SHAUN BONCKER on 13/4/19.
//  Copyright © 2019 ShaunB. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}

