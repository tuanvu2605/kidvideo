//
//  ImageTitleCell.swift
//  KidVideo
//
//  Created by Tuan Vu on 7/28/17.
//  Copyright © 2017 Tuan Vu. All rights reserved.
//

import UIKit

class ImageTitleCell: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        
        // Initialization code
    }
    
    func display_()
    {
        img.image = UIImage(named: "a")
        title.text = "A"
    }

}
