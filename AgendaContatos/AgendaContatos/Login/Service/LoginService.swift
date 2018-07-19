//
//  LoginService.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 18/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

protocol LoginServiceDelegate {
    
    func postLoginSuccess()
    func postLoginFailure(error: String)
}

class LoginService {
    
    var delegate: LoginServiceDelegate
    
    required init(delegate: LoginServiceDelegate) {
        self.delegate = delegate
    }
    
    func postLogin(email: String, senha: String) {
        
        LoginRequestFactory.postLogin(email: email, senha: senha).validate().responseObject(keyPath: "data") { (response: DataResponse<User>) in
            
            switch response.result {
            case .success:
                
                if let user = response.result.value {
                    
                    user.setHeaderParams(header: response.response?.allHeaderFields)
                    
                    UserViewModel.clear()
                    
                    UserViewModel.save(usuario: user)
                }
                
                self.delegate.postLoginSuccess()
                
            case .failure(let error):
                
                self.delegate.postLoginFailure(error: error.localizedDescription)
            }
        }
    }
}
