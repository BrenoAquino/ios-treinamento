//
//  DetalheSenhaViewController.swift
//  Treinamento
//
//  Created by Breno Aquino on 12/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class DetalheSenhaViewController: UIViewController {

    var senha: String!
    
    @IBOutlet weak var senhaResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Senha"
        self.view.backgroundColor = .orange
        self.senhaResult.text = self.senha
    }
}
