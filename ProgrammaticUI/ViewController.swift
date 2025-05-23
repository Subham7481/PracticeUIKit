//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UIViewController{
    
    let nameLabel = UILabel()
    var collectionView: UICollectionView!
    let editProfileButton = UIButton()
    let logoutButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Profile View"
        
        var image = UIImage(systemName: "person.circle")
        var imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 150, y: 100, width: 100, height: 100)
        view.addSubview(imageView)
        
        
        nameLabel.text = "Subham Kumar"
        nameLabel.textColor = .black
        nameLabel.font = .systemFont(ofSize: 20)
        nameLabel.textAlignment = .center
        nameLabel.frame = CGRect(x: 120, y: 200, width: 150, height: 40)
        view.addSubview(nameLabel)
        
        editProfileButton.setTitle("Edit Profile", for: .normal)
        editProfileButton.backgroundColor = .systemBlue
        editProfileButton.frame = CGRect(x: 100, y: 300, width: 150, height: 50)
        editProfileButton.layer.cornerRadius = 10
        view.addSubview(editProfileButton)
        
        logoutButton.setTitle("Edit Profile", for: .normal)
        logoutButton.backgroundColor = .red
        logoutButton.frame = CGRect(x: 100, y: 300, width: 150, height: 50)
        logoutButton.layer.cornerRadius = 10
        view.addSubview(logoutButton)
        
        let stackView = UIStackView(arrangedSubviews: [editProfileButton, logoutButton])
        stackView.axis = .horizontal
        stackView.spacing = 16
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 300),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
