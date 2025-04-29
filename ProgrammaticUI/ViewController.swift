//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UIViewController {
    let nextButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let myCustomView = MyCustomView()
        myCustomView.frame = CGRect(x: 0, y: 100, width: 300, height: 200)
        myCustomView.backgroundColor = UIColor.gray
        myCustomView.layer.cornerRadius = 10
        view.addSubview(myCustomView)
        myCustomView.useComponents()
    }
}
class MyCustomView: UIView{
    @objc func useComponents(){
        let myLabel = UILabel()
        myLabel.text = "Using Components of UIKit for the learning purpose."
        myLabel.textColor = .white
        myLabel.backgroundColor = .green
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 50, y: 100, width: 200, height: 40)
        self.addSubview(myLabel)
    }
}
