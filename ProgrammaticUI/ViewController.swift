//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

protocol ChildViewControllerDelegate: AnyObject{
    func didEnterText(_ text: String)
}

class ChildViewController: UIViewController{
    weak var delegate: ChildViewControllerDelegate?
    
    let textField = UITextField()
    let sendButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        textField.frame = CGRect(x: 40, y: 100, width: 300, height: 40)
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        
        sendButton.setTitle("Send", for: .normal)
        sendButton.setTitleColor(.white, for: .normal)
        sendButton.backgroundColor = .systemBlue
        sendButton.frame = CGRect(x: 40, y: 160, width: 100, height: 40)
        sendButton.addTarget(self, action: #selector(sendTapped), for: .touchUpInside)
        view.addSubview(sendButton)
    }
    @objc func sendTapped(){
        delegate?.didEnterText(textField.text ?? "")
        dismiss(animated: true, completion: nil)
    }
}

class ViewController: UIViewController, ChildViewControllerDelegate {
    let label = UILabel()
    let openButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Programmatic UI"
        
        label.frame = CGRect(x: 40, y: 100, width: 300, height: 40)
        label.text = "No data yet."
        view.addSubview(label)
        
        openButton.setTitle("Open Child", for: .normal)
        openButton.setTitleColor(.white, for: .normal)
        openButton.backgroundColor = .systemGreen
        openButton.frame = CGRect(x: 40, y: 160, width: 150, height: 40)
        openButton.addTarget(self, action: #selector(openChildVC), for: .touchUpInside)
        view.addSubview(openButton)
        
    }
    @objc func openChildVC(){
        let childvc = ChildViewController()
        childvc.delegate = self
        present(childvc, animated: true, completion: nil)
    }
    
    func didEnterText(_ text: String) {
        label.text = "Received: \(text)"
    }
}
