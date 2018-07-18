//
//  LoginRequestFactory.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 18/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import Alamofire

class LoginRequestFactory {
    
    static func postLogin(email: String, senha: String) -> DataRequest {
        
        let param: Parameters = ["email" : email, "password" : senha]
        
        return Alamofire.request(baseUrl + "auth/sign_in", method: .post, parameters: param, encoding: JSONEncoding.default)
    }
}
