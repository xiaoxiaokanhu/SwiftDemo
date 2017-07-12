//
//  ViewController.swift
//  SwiftDemo
//
//  Created by newo－du on 2017/7/11.
//  Copyright © 2017年 newo－du. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mainSize = UIScreen.main.bounds.size
        
        tableView = UITableView(frame:CGRect(x:0,y:0,width:mainSize.width,height:mainSize.height))
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        tableView.register(LCMainTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(LCMainTableViewCell.self))
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       
        let cell:LCMainTableViewCell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(LCMainTableViewCell.self)) as! LCMainTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        let url = URL(string: "http://n.sinaimg.cn/news/20170711/sdgQ-fyhwret1287623.jpg")!
        cell.iconImageView.kf.setImage(with: url)
        cell.nameLabel.text = "一切的一切"
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let loginVC = DYLoginViewController()
            let nav = UINavigationController(rootViewController:loginVC)
            self.present(nav, animated: true, completion: { 
                
            })
        case 1:
        print("这是错的")
        case 2:
        print("这是错的")
        default:
            print("这是错的")
        }
    }

}

