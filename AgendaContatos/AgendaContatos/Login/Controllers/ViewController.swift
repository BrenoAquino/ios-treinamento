//
//  ViewController.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 16/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - UI Elemetens
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var cadastro: UIButton!
    
    // MARK: - Life
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.logo.image = Asset.agendaLogo.image
        
        self.email.placeholder = L10n.Login.entrar
        self.senha.placeholder = L10n.Login.senha
        
        self.login.setTitle(L10n.Login.entrar, for: .normal)
        self.login.setTitleColor(.white, for: .normal)
        self.login.layer.cornerRadius = self.login.bounds.height / 2
        self.login.backgroundColor = .blue
        
        self.cadastro.setTitle(L10n.Login.cadastrar, for: .normal)
        self.cadastro.setTitleColor(.white, for: .normal)
        self.cadastro.layer.cornerRadius = self.cadastro.bounds.height / 2
        self.cadastro.backgroundColor = .blue
    }

    // MARK: - Actions
    @IBAction func logar(_ sender: UIButton) {
        
    }
}

