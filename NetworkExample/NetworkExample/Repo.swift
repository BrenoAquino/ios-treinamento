//
//  Repo.swift
//  NetworkExample
//
//  Created by Breno Aquino on 16/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import Foundation
import ObjectMapper

class Repo: Mappable {
    
    var name: String?
    var language: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
        name        <-  map["full_name"]
        language    <-  map["language"]
    }
}
