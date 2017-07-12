//
//  LCMainTableViewCell.swift
//  SwiftDemo
//
//  Created by newo－du on 2017/7/11.
//  Copyright © 2017年 newo－du. All rights reserved.
//

import UIKit

class LCMainTableViewCell: UITableViewCell {

    var iconImageView:UIImageView!
    var nameLabel:UILabel!
    var lineView:UIView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconImageView = UIImageView()
        iconImageView.frame = CGRect(x:10,y:10,width:40,height:40)
        iconImageView.contentMode = UIViewContentMode.scaleAspectFill
        iconImageView.layer.masksToBounds = true
        self.contentView.addSubview(iconImageView)

        nameLabel = UILabel(frame:CGRect(x:60,y:20,width:300,height:20))
        nameLabel.textColor = UIColor.red
        nameLabel.font = UIFont.systemFont(ofSize: 15)
        nameLabel.textAlignment = NSTextAlignment.left
        self.contentView.addSubview(nameLabel)
        
        lineView = UIView(frame:CGRect(x:0,y:59,width:UIScreen.main.bounds.size.width,height:1))
        lineView.backgroundColor = UIColor.lightGray
        self.contentView.addSubview(lineView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
