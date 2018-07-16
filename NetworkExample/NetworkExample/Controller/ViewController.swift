//
//  ViewController.swift
//  NetworkExample
//
//  Created by Breno Aquino on 16/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func alamofireExample(_ sender: Any) {
        
        Alamofire.request("https://api.github.com/users/brenoaquino/repos", method: .get).validate().responseArray(completionHandler: { (response: DataResponse<[Repo]>) in
            
            switch response.result {
                
            case .success:
                
                if let repos = response.result.value {
                    
                    for repo in repos {
                        
                        print("Nome: \(repo.name ?? "") e foi feito em \(repo.language ?? "")")
                    }
                }
                
            case .failure(let error):
                
                print(error.localizedDescription)
            }
        })
            
            
            
//        Alamofire.request("https://api.github.com/users/brenoaquino/repos", method: .get).validate().responseJSON { (response) in
//
//            switch response.result {
//
//            case .success:
//
//                if let result = response.result.value {
//                    print(result)
//                }
//
//            case .failure:
//
//                print("Falhou")
//            }
//        }
    }
    
    func soma(x val1: Int, y val2: Int = 2) -> Int {
        
        return val1 + val2
    }
}

