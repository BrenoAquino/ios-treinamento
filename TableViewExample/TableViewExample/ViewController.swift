//
//  ViewController.swift
//  TableViewExample
//
//  Created by Breno Aquino on 12/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}

// MARK: - TableView
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellBasic", for: indexPath)
        
        cell.textLabel?.text = "Secton: \(indexPath.section) | Row: \(indexPath.row)"
        
        return cell
    }
}
