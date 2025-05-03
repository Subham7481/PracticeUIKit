//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Subham Patel on 23/04/25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    var collectionView: UICollectionView!
    let items = Array(1...20)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       
        //creating layout
        let layout = UICollectionViewFlowLayout()
        let padding: CGFloat = 10
        let itemWidth = (view.frame.width - 3 * padding) / 2
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        layout.minimumInteritemSpacing = padding
        layout.minimumLineSpacing = padding
        
        //Create CollectionView
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MyCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = .white
        
        view.addSubview(collectionView)
    }
    //DataSource Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCell
        cell.label.text = "\(items[indexPath.item])"
        return cell
    }
}

class MyCell: UICollectionViewCell{
    let label = UILabel()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.backgroundColor = .systemGreen
        label.textAlignment = .center
        label.frame = contentView.bounds
        contentView.addSubview(label)
        contentView.layer.cornerRadius = 8
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented.")
    }
}
