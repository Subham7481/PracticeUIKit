//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UIViewController{
    let nameField = UITextField()
    let emailField = UITextField()
    let passwordField = UITextField()
    let confirmPasswordField = UITextField()
    let ageField = UITextField()
    let addressField = UITextField()
    let submitButton = UIButton(type: .roundedRect)
    let errorMessage = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Practice"
        
        nameField.placeholder = "Enter name:"
        nameField.borderStyle = .roundedRect
        nameField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameField)
        
        emailField.placeholder = "Enter email:"
        emailField.borderStyle = .roundedRect
        emailField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailField)
        
        passwordField.placeholder = "Enter password:"
        passwordField.borderStyle = .roundedRect
        passwordField.isSecureTextEntry = true
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordField)
        
        confirmPasswordField.placeholder = "Enter password again:"
        confirmPasswordField.borderStyle = .roundedRect
        confirmPasswordField.isSecureTextEntry = true
        confirmPasswordField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(confirmPasswordField)
        
        ageField.placeholder = "Enter age:"
        ageField.borderStyle = .roundedRect
        ageField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ageField)
        
        addressField.placeholder = "Enter address:"
        addressField.borderStyle = .roundedRect
        addressField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(addressField)
        
        submitButton.setTitle("Submit", for: .normal)
        submitButton.backgroundColor = .green
        submitButton.titleLabel?.textColor = .white
        submitButton.layer.cornerRadius = 10
        submitButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(submitButton)
        
        errorMessage.textColor = .red
        errorMessage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(errorMessage)
        
        
        NSLayoutConstraint.activate([
            nameField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            nameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameField.heightAnchor.constraint(equalToConstant: 40),
            
            emailField.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 20),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordField.heightAnchor.constraint(equalToConstant: 40),
            
            confirmPasswordField.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 20),
            confirmPasswordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            confirmPasswordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            confirmPasswordField.heightAnchor.constraint(equalToConstant: 40),
            
            ageField.topAnchor.constraint(equalTo: confirmPasswordField.bottomAnchor, constant: 20),
            ageField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ageField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ageField.heightAnchor.constraint(equalToConstant: 40),
            
            addressField.topAnchor.constraint(equalTo: ageField.bottomAnchor, constant: 20),
            addressField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            addressField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            addressField.heightAnchor.constraint(equalToConstant: 40),
            
            submitButton.topAnchor.constraint(equalTo: addressField.bottomAnchor, constant: 60),
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            submitButton.heightAnchor.constraint(equalToConstant: 40),
            submitButton.widthAnchor.constraint(equalToConstant: 330),
            
            errorMessage.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 10),
            errorMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        ])
    }
    func validate(){
        errorMessage.text = ""
        if(nameField.text?.isEmpty ?? true || emailField.text?.isEmpty ?? true || passwordField.text?.isEmpty ?? true || confirmPasswordField.text?.isEmpty ?? true || ageField.text?.isEmpty ?? true || addressField.text?.isEmpty ?? true){
            errorMessage.text = "Please fill all the fields."
        }
        
        if !(emailField.text?.contains("@") == true && emailField.text?.contains(".") == true) {
            errorMessage.text = "Invalid email"
        }
        
        if let password = passwordField.text,
           let confirmPassword = confirmPasswordField.text,
           (password.count < 8 || confirmPassword.count < 8) {
            errorMessage.text = "Enter password more than seven characters."
        }
    }
    
    @objc func login(){
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}
