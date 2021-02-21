//
//  AlarmTableViewCell.swift
//  part5
//
//  Created by 크선멘 개발 on 2021/02/01.
//

import UIKit

class AlarmTableViewCell: UITableViewCell {

    //Mark Properties
    @IBOutlet weak var CellView: cellview! {
        didSet {
            
            // Make it card-like
            CellView.layer.borderWidth = 0.3
            CellView.layer.borderColor = UIColor(displayP3Red: 225/255, green: 225/256, blue: 225/256, alpha: 1).cgColor
            
            CellView.layer.cornerRadius = 10
            CellView.layer.shadowOpacity = 1
            CellView.layer.shadowRadius = 2
            CellView.layer.shadowColor = UIColor(displayP3Red: 220/255, green: 220/256, blue: 220/256, alpha: 1).cgColor
            CellView.layer.shadowOffset = CGSize(width: 3, height: 3)
            CellView.backgroundColor = UIColor(displayP3Red: 244/255, green: 244/256, blue: 244/256, alpha: 1)
            CellView.layer.masksToBounds = false
                    
        }
    }
    
    @IBOutlet weak var AlarmType: UILabel!
    
    @IBOutlet weak var Icon: UIImageView! {
        didSet{
            Icon.layer.shadowOpacity = 1
            Icon.layer.shadowRadius = 2
            Icon.layer.shadowColor = UIColor(displayP3Red: 220/255, green: 220/256, blue: 220/256, alpha: 1).cgColor
            Icon.layer.shadowOffset = CGSize(width: 3, height: 3)
            Icon.layer.masksToBounds = false
        }
    }
    
    @IBOutlet weak var AlarmContent: UITextView! {
        didSet{
            AlarmContent.textContainerInset = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
        }
    }
    
    @IBOutlet weak var AlarmTime: UILabel!
    
    @IBOutlet weak var ContentView: UIView!{
        didSet{
            ContentView.backgroundColor = UIColor(displayP3Red: 247/255, green: 247/256, blue: 247/256, alpha: 1)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

