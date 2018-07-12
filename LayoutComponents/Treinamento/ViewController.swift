//
//  LoginViewController.swift
//  Treinamento
//
//  Created by Breno Aquino on 11/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var matriculaLegend: UILabel!
    @IBOutlet weak var senhaLegend: UILabel!
    @IBOutlet weak var matricula: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var entrar: UIButton!
    @IBOutlet weak var entrarSenha: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        
        self.matriculaLegend.text = "Entrar com Matricula"
        self.senhaLegend.text = "Senha"
        self.matriculaLegend.text = "Matricula Digitada"
        self.senhaLegend.text = "Senha Digitada"
        self.senha.textContentType = .password
        
        self.entrar.setTitle("Matricula", for: .normal)
        self.entrar.setTitle("Entrando", for: .highlighted)
        self.entrar.backgroundColor = .gray
        self.entrar.layer.cornerRadius = self.entrar.frame.height / 2
        
        self.entrarSenha.setTitle("Senha", for: .normal)
        self.entrarSenha.setTitle("Entrando", for: .highlighted)
        self.entrarSenha.backgroundColor = .orange
        self.entrarSenha.layer.cornerRadius = self.entrar.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueDetalhe" {
            
            if let controller = segue.destination as? DetalheViewController {
                
                controller.matricula = self.matricula.text
            }
            
        } else if segue.identifier == "segueSenha" {
            
            guard let controller = segue.destination as? DetalheSenhaViewController else {
                return
            }
            
            controller.senha = self.senha.text
        }
    }
}
