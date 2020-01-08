//
//  ViewController.swift
//  colectionViewdemo
//
//  Created by Heimer Nguyen on 1/8/20.
//  Copyright © 2020 Heimer Nguyen. All rights reserved.
//

import UIKit
import CarLensCollectionViewLayout

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var cView: UICollectionView!
    
    let reuseIdentifier = "CollectionViewCell" // also enter this string as the cell identifier in the storyboard
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCollectionView()
    }
    
    private func initCollectionView() {
//        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
//        cView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
        cView.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.identifier)
        cView.collectionViewLayout = CarLensCollectionViewLayout()
        cView.dataSource = self
        cView.delegate = self
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.identifier, for: indexPath as IndexPath) as! CustomCell

//        cell.myLabel.text = self.items[indexPath.item]
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.item)!")
    }
}
