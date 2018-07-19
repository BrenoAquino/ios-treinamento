//
//  ContatosViewController.swift
//  AgendaContatos
//
//  Created by Breno Aquino on 19/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class ContatosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var service: ContatoService!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = L10n.Contatos.title
        
        self.service = ContatoService(delegate: self)
        
        self.service.getContatos()
    }
}

extension ContatosViewController: ContatoServiceDelegate {
    
    func getContatosSuccess() {
        
        for contato in ContatosViewModel.get() {
            print(contato.nome)
        }
    }
    
    func getContatosFailure(error: String) {
        
    }
}
