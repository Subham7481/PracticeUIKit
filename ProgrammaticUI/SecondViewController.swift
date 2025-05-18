//
//  SecondViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 18/05/25.
//

import Foundation
import UIKit
class SecondViewController: UIViewController{
    var receivedData: String?
    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.frame = CGRect(x: 40, y: 100, width: 300, height: 50)
        label.text = receivedData
        label.textColor = .black
        view.addSubview(label)
    }
}
