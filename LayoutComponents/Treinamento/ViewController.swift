//
//  LoginViewController.swift
//  Treinamento
//
//  Created by Breno Aquino on 11/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTitle: UILabel!
    @IBOutlet weak var matriculaLegend: UILabel!
    @IBOutlet weak var senhaLegend: UILabel!
    @IBOutlet weak var matricula: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var entrar: UIButton!
    @IBOutlet weak var matriculaResult: UILabel!
    @IBOutlet weak var senhaResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginTitle.text = "LOGIN"
        self.matriculaLegend.text = "Entrar com Matricula"
        self.senhaLegend.text = "Senha"
        self.matriculaLegend.text = "Matricula Digitada"
        self.senhaLegend.text = "Senha Digitada"
        self.senha.textContentType = .password
        
        self.entrar.setTitle("Entrar", for: .normal)
        self.entrar.setTitle("Entrando", for: .highlighted)
        self.entrar.backgroundColor = .orange
        self.entrar.layer.cornerRadius = self.entrar.frame.height / 2
    }
    
    @IBAction func logar(_ sender: Any) {
        
        self.matriculaResult.text = self.matricula.text
        self.senhaResult.text = self.senha.text
        
        self.matricula.text = ""
        self.senha.text = nil
    }
}
