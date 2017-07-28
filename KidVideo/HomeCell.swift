//
//  HomeCell.swift
//  KidVideo
//
//  Created by Tuan Vu on 7/28/17.
//  Copyright © 2017 Tuan Vu. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    @IBOutlet weak var imvIcon: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var viewContent: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        viewContent.layer.cornerRadius =  5
        
        
        // Initialization code
    }
    
    func display_(value : (imgName:String , title : String))
    {
        imvIcon.image = UIImage(named: value.imgName)
        lblTitle.text = value.title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
