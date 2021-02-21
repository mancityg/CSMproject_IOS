//
//  menti.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/20.
//

import UIKit

class menti {
    
    //Mark: Prooperties
    
    var profile_img: UIImage?
    var name: String
    var label1: String
    var info: NSMutableAttributedString
    var hashtag1: String
    var hashtag2: String
    var hashtag3: String
    var hashtag4: String
    var hashtag5: String
    
    //Mark: Initialization
    
    init?(profile_img:UIImage, name:String, label1:String, info:NSMutableAttributedString, hashtag1:String, hashtag2:String, hashtag3:String, hashtag4:String, hashtag5:String){
        
        //Initialize stored properties.
        self.profile_img = profile_img
        self.name = name
        self.label1 = label1
        self.info = info
        self.hashtag1 = hashtag1
        self.hashtag2 = hashtag2
        self.hashtag3 = hashtag3
        self.hashtag4 = hashtag4
        self.hashtag5 = hashtag5
    }
}

