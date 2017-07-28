//
//  CollectionController.swift
//  KidVideo
//
//  Created by Tuan Vu on 7/28/17.
//  Copyright © 2017 Tuan Vu. All rights reserved.
//

import UIKit
import KRLCollectionViewGridLayout

class CollectionController: BaseController{

    var collection: UICollectionView!
    let imageCellID = "imageCellID"
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let collectionLayout = KRLCollectionViewGridLayout()
        collectionLayout.numberOfItemsPerLine = 3
        collectionLayout.aspectRatio = 0.8
        collectionLayout.interitemSpacing = 5
        collectionLayout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        collectionLayout.scrollDirection = .vertical
        collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: AppSize.screenWidth, height: AppSize.screenHeight), collectionViewLayout: collectionLayout)
        self.view.addSubview(collection)
        self.view.bringSubview(toFront: collection)
        collection.register(UINib(nibName: "ImageTitleCell", bundle: nil), forCellWithReuseIdentifier: imageCellID)
        collection.backgroundColor = UIColor.clear
        collection.reloadData();

     
    }
    

    
}
