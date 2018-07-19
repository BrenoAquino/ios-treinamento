//
//  User.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 18/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import ObjectMapper
import RealmSwift

class User: Object, Mappable {
    
    var id = RealmOptional<Int>()
    // Double, Float, Int, Bool -> RealmOpntion<>()
    
    @objc dynamic var email: String?
    
    @objc dynamic var accessToken: String?
    @objc dynamic var client: String?
    @objc dynamic var uid: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func mapping(map: Map) {
        
        self.id.value   <-  map["id"]
        self.email      <-  map["email"]
    }
}
