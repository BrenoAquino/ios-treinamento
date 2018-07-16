//
//  ViewController.swift
//  RealmExample
//
//  Created by Breno Aquino on 13/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Criar
    @IBOutlet weak var matricula: UITextField!
    @IBOutlet weak var senha: UITextField!
    
    // MARK: - Ler
    @IBOutlet weak var matriculaRead: UITextField!
    @IBOutlet weak var matriculaShow: UILabel!
    @IBOutlet weak var senhaShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let user = User()
//        user.matricula = "Breno"
//        user.senha = "Breno123"
//        
//        try! uiRealm.write {
//            uiRealm.add(user)
//        }
    }
    
    // MARK: - Actions
    @IBAction func entrar(_ sender: UIButton) {
        
        if let matricula = self.matricula.text, let senha = self.senha.text {
            
            let user = User()
            user.matricula = matricula
            user.senha = senha
            
            try! uiRealm.write {
                uiRealm.add(user)
            }
        }
    }
    
    @IBAction func ler(_ sender: UIButton) {
        
        if let matricula = self.matriculaRead.text {
            
            if let user = uiRealm.object(ofType: User.self, forPrimaryKey: matricula) {
                
                self.matriculaShow.text = user.matricula
                self.senhaShow.text = user.senha
            }
        }
        
//        let users = uiRealm.objects(User.self).filter("senha contains 'iOS'")
        let users = uiRealm.objects(User.self)
        
        var usersArray: [User] = []
        usersArray.append(contentsOf: users)
        
        for user in usersArray.filter({$0.senha.contains("iOS")}) {
            
            print(user)
        }
    }
}

