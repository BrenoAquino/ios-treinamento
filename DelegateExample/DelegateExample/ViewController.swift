//
//  ViewController.swift
//  DelegateExample
//
//  Created by Breno Aquino on 17/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var matriculadosCounterView: MatriculaCounter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.matriculadosCounterView.dataSource = self
        self.matriculadosCounterView.delegate = self
        self.matriculadosCounterView.reloadData()
    }
}

extension ViewController: MatriculaCounterDataSource, MatriculaCounterDelegate {
    
    func didSelect() {
        print("Tap na Controller")
    }
    
    func colorOfText() -> UIColor {
        
        return .orange
    }
    
    func numberOfLabel() -> Int {
        
        return 7
    }
}
