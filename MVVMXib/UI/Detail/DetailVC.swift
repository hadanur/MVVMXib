//
//  DetaiVC.swift
//  MVVMXib
//
//  Created by Hakan Adanur on 27.11.2022.
//

import Foundation
import UIKit

class DetailVC: UIViewController {

    @IBOutlet private weak var valueLabel: UILabel!
    private var viewModel: DetailVM!
    
    private var value: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = value
        WebService.shared.downloadCryptoCurrencies()
    }
    
    @IBAction func closeButtonClicked(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension DetailVC {
    static func create(value: String) -> DetailVC {
        let vc = DetailVC(nibName: "DetailVC", bundle: nil)
        vc.value = value
        vc.viewModel = DetailVM()
        return vc
    }
}
