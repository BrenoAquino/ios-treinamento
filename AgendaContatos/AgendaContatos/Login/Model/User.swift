//
//  User.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 18/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import ObjectMapper

class User: Mappable {
    
    var id: Int?
    var email: String?
    
    var accessToken: String?
    var client: String?
    var uid: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        self.id     <-  map["id"]
        self.email  <-  map["email"]
    }
}
