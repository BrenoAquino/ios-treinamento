//
//  UserViewModel.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 19/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import Foundation
import RealmSwift

class UserViewModel {
    
    // MARK: - Realm
    static func save(usuario: User) {
        
        try! uiRealm.write {
            
            uiRealm.add(usuario, update: true)
        }
    }
    
    static func clear() {
        
        try! uiRealm.write {
            
            let usuarios = uiRealm.objects(User.self)
            
            uiRealm.delete(usuarios)
        }
    }
}
