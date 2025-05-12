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
        
        let hvc = HomeViewController()
        hvc.title = "Home"
        hvc.tabBarItem.image = UIImage(systemName: "house.fill")
        
        let svc = SettingViewController()
        svc.title = "Setting"
        svc.tabBarItem.image = UIImage(systemName: "gearshape.fill")
        
        let homeNav = UINavigationController(rootViewController: hvc)
        let settingNav = UINavigationController(rootViewController: svc)
        
        self.viewControllers = [homeNav, settingNav]
    }
}

class HomeViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
    }
}

class SettingViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
    }
}
