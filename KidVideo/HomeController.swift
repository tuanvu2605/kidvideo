//
//  HomeController.swift
//  KidVideo
//
//  Created by Tuan Vu on 7/28/17.
//  Copyright © 2017 Tuan Vu. All rights reserved.
//

import UIKit

class HomeController: BaseController {
    @IBOutlet weak var tableView: UITableView!
    let homeCellId = "homeCellId"
    
    let list : [(imgName:String , title : String)] = [("ic_start","Start"),("ic_video","Video Learning"),("ic_look","Look And Choose"),("ic_listen","Listen and Guess"),("ic_quiz","Quiz")]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: homeCellId)
        tableView.backgroundColor = UIColor.clear
        tableView.separatorStyle = .none

    }

  
}
extension HomeController : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: homeCellId, for: indexPath) as! HomeCell
        let value = list[indexPath.row]
        cell.display_(value: value)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let startCate = StartCategoryController(nibName: "StartCategoryController", bundle: nil)
        present(startCate, animated: true) { 
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
        
    }
}
