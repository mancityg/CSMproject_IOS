//
//  menti_cell.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/19.
//

import UIKit

class menti_cell: UITableViewCell {
    @IBOutlet weak var profile_img: UIImageView!{
        didSet{
            profile_img.layer.borderWidth = 1.5.adjusted
            profile_img.layer.borderColor = UIColor(displayP3Red: 246/255, green: 199/256, blue: 122/256, alpha: 1).cgColor
            profile_img.layer.cornerRadius = 51.adjusted
            profile_img.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var info: UILabel!

    @IBOutlet weak var hashtag1: hashtag_custom!
    @IBOutlet weak var hashtag2: hashtag_custom!
    @IBOutlet weak var hashtag3: hashtag_custom!
    @IBOutlet weak var hashtag4: hashtag_custom!
    @IBOutlet weak var hashtag5: hashtag_custom!
    
    @IBOutlet weak var CellView: UIView!{
        didSet{
            CellView.layer.borderWidth = 1.5
            CellView.layer.borderColor = UIColor(displayP3Red: 106/255, green: 170/256, blue: 145/256, alpha: 1).cgColor
            
            //CellView.backgroundColor = UIColor(displayP3Red: 106/255, green: 170/256, blue: 145/256, alpha: 1)
            CellView.layer.cornerRadius = 10
    
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
