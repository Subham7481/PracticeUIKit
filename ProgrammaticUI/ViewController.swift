//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Selected: \(data[indexPath.row])")
        switch indexPath.row{
        case 0:
            navigationController?.pushViewController(AppleViewController(), animated: true)
            
        case 1:
            navigationController?.pushViewController(BananaViewController(), animated: true)
            
        case 2:
            navigationController?.pushViewController(MangoViewController(), animated: true)
            
        case 3:
            navigationController?.pushViewController(OrangeViewController(), animated: true)
            
        case 4:
            navigationController?.pushViewController(PineappleViewController(), animated: true)
            
        default:
            break
        }
    }
    
    let tableView = UITableView()
    let data = ["Apple", "Banana", "Mango", "Orange", "Pineapple"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "fruits"
        
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

class AppleViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Apple"
        view.backgroundColor = .red
    }
}
class BananaViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Banana"
        view.backgroundColor = .yellow
    }
}
class MangoViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Mango"
        view.backgroundColor = .green
    }
}
class OrangeViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orange"
        view.backgroundColor = .orange
    }
}
class PineappleViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pineapple"
        view.backgroundColor = .green

        let descriptionLabel = UILabel()
        descriptionLabel.text = "Pineapple is good for health."
        descriptionLabel.textColor = .white
        descriptionLabel.font = UIFont.systemFont(ofSize: 20)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0

        // Set frame or use Auto Layout
        descriptionLabel.frame = CGRect(x: 20, y: 200, width: view.frame.width - 40, height: 100)

        // Add to the view
        view.addSubview(descriptionLabel)
    }
}
