//
//  DetalheViewController.swift
//  Treinamento
//
//  Created by Breno Aquino on 12/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    var matricula: String!
    
    @IBOutlet weak var matriculaResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Matricula"
        self.view.backgroundColor = .gray
        self.matriculaResult.text = self.matricula
    }
}
