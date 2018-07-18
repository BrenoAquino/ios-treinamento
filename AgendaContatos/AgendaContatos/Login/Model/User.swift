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

extension User {
    
    func setHeaderParams(header: [AnyHashable : Any]?) {
        
        guard let header = header else {
            return
        }
        
        if let uid = header["Uid"] as? String {
            self.uid = uid
        }
        
        if let client = header["Client"] as? String {
            self.client = client
        }
        
        if let accessToken = header["Access-Token"] as? String {
            self.accessToken = accessToken
        }
    }
}
