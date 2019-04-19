//
//  Data.swift
//  Todoey
//
//  Created by SHAUN BONCKER on 13/4/19.
//  Copyright © 2019 ShaunB. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name : String = ""
    @objc dynamic var age: Int = 0
}
