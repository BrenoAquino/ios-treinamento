//
//  User.swift
//  RealmExample
//
//  Created by Breno Aquino on 16/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    
    @objc dynamic var matricula: String = ""
    @objc dynamic var senha: String = ""
    
    override static func primaryKey() -> String? {
        return "matricula"
    }
}
