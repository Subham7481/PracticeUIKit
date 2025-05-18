//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()
    let textField = UITextField()
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Programmatic UI"
         
        //Text field
        label.text = "Enter data:"
        label.frame = CGRect(x: 50, y: 300, width: 100, height: 40)
        view.addSubview(label)
        
        textField.placeholder = "Enter text here"
        textField.frame = CGRect(x: 50, y: 350, width: 300, height: 50)
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 8
        textField.layer.borderColor = UIColor.black.cgColor
        view.addSubview(textField)
        
       
        button.setTitle("Click me!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.textAlignment = .center
        button.frame = CGRect(x: 100, y: 450, width: 100, height: 40)
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func navigate(){
        let secVC = SecondViewController()
        secVC.receivedData = textField.text
        navigationController?.pushViewController(secVC, animated: true)
        
       print("Navigation Done!")
    }
}
