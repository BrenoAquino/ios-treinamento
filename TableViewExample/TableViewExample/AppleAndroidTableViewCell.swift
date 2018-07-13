//
//  AppleAndroidTableViewCell.swift
//  TableViewExample
//
//  Created by Breno Aquino on 13/07/18.
//  Copyright © 2018 Breno Aquino. All rights reserved.
//

import UIKit
import Reusable

class AppleAndroidTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet weak var apple: UIImageView!
    @IBOutlet weak var compareLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
