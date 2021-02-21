//
//  Alarm.swift
//  part5
//
//  Created by 크선멘 개발 on 2021/02/01.
//

import UIKit

class Alarm {
    
    //Mark: Prooperties
    
    var type: String
    var gettime: String
    var content: String
    var icon: UIImage?
    
    //Mark: Initialization
    
    init?(type:String, gettime:String, icon:UIImage?, content:String){
        //The type must not be empty
        guard !type.isEmpty else{
            return nil
        }
        
        //Initialize stored properties.
        self.type = type
        self.gettime = gettime
        self.content = content
        self.icon = icon
    }
}
