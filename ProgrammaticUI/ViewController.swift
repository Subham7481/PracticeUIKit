//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let tableView = UITableView()
    let textLabel = UILabel()
    let textField = UITextField()
    var tasks: [String] = []
    let button = UIButton(type: .system)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tasks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Todo app"
        
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        textLabel.text = "Enter the task:"
        textLabel.frame = CGRect(x: 50, y: 550, width: 250, height: 40)
        view.addSubview(textLabel)
        
        textField.placeholder = "Enter the task:"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 50, y: 600, width: 300, height: 40)
        textField.autocorrectionType = .no
        view.addSubview(textField)
        
        button.setTitle("Add task", for: .normal)
        button.frame = CGRect(x: 100, y: 700, width: 250, height: 50)
        button.backgroundColor = .green
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(addTask), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func addTask(){
        guard let newTask = textField.text, !newTask.isEmpty else { return}
        tasks.append(newTask)
        tableView.reloadData()
        textField.text = ""
    }
}
