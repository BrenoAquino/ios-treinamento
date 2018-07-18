//
//  LoginService.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 18/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

class LoginService {
    
    func postLogin(email: String, senha: String) {
        
        LoginRequestFactory.postLogin(email: email, senha: senha).validate().responseObject(keyPath: "data") { (response: DataResponse<User>) in
            
            switch response.result {
            case .success:
                
                if let user = response.result.value {
                    
                    print("Email \(user.email ?? "") com id \(user.id ?? 0)")
                    
                    user.setHeaderParams(header: response.response?.allHeaderFields)
                    
                }
                
            case .failure(let error):
                
                print(error.localizedDescription)
            }
        }
    }
}
