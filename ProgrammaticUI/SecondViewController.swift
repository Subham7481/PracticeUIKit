//
//  SecondViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 18/05/25.
//

import Foundation
import UIKit
class SecondViewController: UIViewController{
    let label = UILabel()
    let button = UIButton()
    var count = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Passed data"
        
       
        label.frame = CGRect(x: 50, y: 150, width: 200, height: 40)
        label.textColor = .red
        view.addSubview(label)
       
        button.frame = CGRect(x: 120, y: 300, width: 250, height: 50)
        button.layer.cornerRadius = 10
        button.setTitle("Increase", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(increment), for: .touchUpInside)
        button.backgroundColor = .systemGreen
        view.addSubview(button)
        
    }
    @objc func increment(){
        count += 1
        label.text = "\(count)"
    }
}
