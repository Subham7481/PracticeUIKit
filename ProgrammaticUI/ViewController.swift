//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGesture)
        
        let button = UIButton()
        button.setTitle("Change Color", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        view.addSubview(button)
        
    }
    @objc func handleTap(){
        print("View Tapped!")
        UIView.animate(withDuration: 0.3) {
            self.view.backgroundColor = .systemGreen
        }
    }
}
