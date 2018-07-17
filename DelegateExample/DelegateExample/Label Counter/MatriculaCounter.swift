//
//  MatriculaCounter.swift
//  DelegateExample
//
//  Created by Breno Aquino on 17/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit
import Reusable // Caso não seja criado na mão

protocol MatriculaCounterDataSource {
    
    func numberOfLabel() -> Int
    func colorOfText() -> UIColor
}

protocol MatriculaCounterDelegate {
    
    func didSelect()
}

class MatriculaCounter: UIView, NibOwnerLoadable {
    
    // MARK: - Vars
    var dataSource: MatriculaCounterDataSource?
    var delegate: MatriculaCounterDelegate?
    
    // MARK: - UI Elements
    // Para Criar a Label no código:
    let labelCouter: UILabel = {

        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Matriculados"
        label.textAlignment = .center
        return label
    }()
    // Usando .xib:
    @IBOutlet weak var labelCounter: UILabel!
    
    
    // MARK: - Life
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.configure()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.configure()
    }
    
    // MARK: - General Functions
    private func configure() {
        
        self.loadNibContent() // Caso não seja criado na mão
        
        // Caso seja criado na mão:
//        self.addSubview(self.labelCouter)
//        self.labelCouter.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
//        self.labelCouter.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
//        self.labelCouter.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
//        self.labelCouter.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(MatriculaCounter.didSelctView))
        self.addGestureRecognizer(gesture)
    }
    
    func reloadData() {
        
        self.labelCouter.text = "Matriculados: \(self.dataSource?.numberOfLabel() ?? 0)"
        self.labelCouter.textColor = self.dataSource?.colorOfText()
    }
    
    // MARK: - Actions
    @objc func didSelctView() {
        
        self.delegate?.didSelect()
    }
}
