//
//  BaseController.swift
//  KidVideo
//
//  Created by Tuan Vu on 7/28/17.
//  Copyright © 2017 Tuan Vu. All rights reserved.
//

import UIKit

class BaseController: UIViewController {
    
    
    
 


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let bg = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: screenHeight))
        bg.image = UIImage(named: "bg_mm.jpg")
        view.addSubview(bg)
        view.sendSubview(toBack: bg)

        

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
      
    }

   
}
