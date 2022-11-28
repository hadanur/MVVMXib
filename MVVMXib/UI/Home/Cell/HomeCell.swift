//
//  HomeCell.swift
//  MVVMXib
//
//  Created by Hakan Adanur on 28.11.2022.
//

import Foundation
import UIKit

class HomeCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    
    func configure(title: String) {
        // CODE
        titleLabel.text = title
    }
}
