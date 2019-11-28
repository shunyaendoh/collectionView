//
//  ViewController.swift
//  CollectionViewProject
//
//  Created by shunya endoh on 2019/11/28.
//  Copyright © 2019 shunya endoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    
    let images = [
        "denkyu",
        "kappa",
        "trello",
        "mogumogu"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        collection.dataSource = self
        collection.delegate = self
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: images[indexPath.row])

        return cell
    }
    
    
}

