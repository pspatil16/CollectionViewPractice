//
//  ViewController.swift
//  CollectionViewPractice
//
//  Created by Student 06 on 29/08/18.
//  Copyright © 2018 Student 06. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    fileprivate let noOfItems = 2
    fileprivate let insets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    @IBOutlet weak var myCollection: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell1
        cell.imageLbl.image = UIImage(named: imgArr[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = myCollection.cellForItem(at: indexPath) as! CollectionViewCell1
        let img = cell.imageLbl.image
        print("You have selected Cake \(imgArr[indexPath.row])")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let totalSpace = insets.left + insets.right + CGFloat(noOfItems-1)*insets.left
        let totalWidth = myCollection.bounds.width - totalSpace
        let width = totalWidth / CGFloat(noOfItems)
        let height = width
        return CGSize(width:width,height:height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return insets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return insets.left
    }
    

    let imgArr = ["1","2","3","4","5","6","7","8"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

