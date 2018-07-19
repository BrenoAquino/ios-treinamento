//
//  SessionControl.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 19/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import Foundation

var header: [String : String] = [:]

class SessionControl {
    
    static var isSessionActive: Bool {
        
        if let _ = uiRealm.objects(User.self).first {
            return true
        }
        return false
    }
    
    static func setHeadersParams(headers: [AnyHashable : Any]? = nil) {
        
        header = [:]
        
        guard let headers = headers else {
            
            if let user = uiRealm.objects(User.self).first {
                
                if let accessToken = user.accessToken {
                    header["Access-Token"] = accessToken
                }
                if let client = user.client {
                    header["Client"] = client
                }
                if let uid = user.uid {
                    header["Uid"] = uid
                }
            }
            
            return
        }
        
        UserViewModel.setHeadersParams(headers: headers)
        
        if let accessToken = headers["Access-Token"] as? String {
            header["Access-Token"] = accessToken
        }
        if let client = headers["Client"] as? String {
            header["Client"] = client
        }
        if let uid = headers["Uid"] as? String {
            header["Uid"] = uid
        }
    }
}
