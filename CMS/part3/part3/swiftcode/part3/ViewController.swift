//
//  ViewController.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/06.
//

import UIKit

class Device {
  // Base width in point, use iPhone 6
  static let base: CGFloat = 428
  static var ratio: CGFloat {
    return UIScreen.main.bounds.width / base
  }
}

extension CGFloat {
  var adjusted: CGFloat {
    return self * Device.ratio
  }
}
extension Double {
  var adjusted: CGFloat {
    return CGFloat(self) * Device.ratio
  }
}
extension Int {
  var adjusted: CGFloat {
    return CGFloat(self) * Device.ratio
  }
}

class ViewController: UIViewController{

    @IBOutlet weak var etcpage_btn1: UIButton!
    @IBOutlet weak var etcpage_btn2: UIButton!
    @IBOutlet weak var etcpage_btn3: UIButton!
    @IBOutlet weak var etcpage_btn4: UIButton!
    @IBOutlet weak var etcpage_btn5: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var icon1: UIImageView!
    @IBOutlet weak var icon2: UIImageView!
    @IBOutlet weak var icon3: UIImageView!
    @IBOutlet weak var icon4: UIImageView!
    @IBOutlet weak var icon5: UIImageView!
    
    var type = "mento"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let margins = view.layoutMarginsGuide
        label1.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        label1.widthAnchor.constraint(equalToConstant: 200.adjusted).isActive = true
        label1.leadingAnchor.constraint(equalTo: icon1.trailingAnchor, constant: 20.adjusted).isActive = true
        label1.topAnchor.constraint(equalTo: margins.topAnchor, constant: 133.adjusted).isActive = true
            
        icon1.widthAnchor.constraint(equalToConstant: 24.adjusted).isActive = true
        icon1.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 24.adjusted).isActive = true
        icon1.topAnchor.constraint(equalTo: margins.topAnchor, constant: 133.adjusted).isActive = true
        
        etcpage_btn1.widthAnchor.constraint(equalToConstant: 398.adjusted).isActive = true
        etcpage_btn1.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 7.adjusted).isActive = true
        etcpage_btn1.topAnchor.constraint(equalTo: margins.topAnchor, constant: 119.adjusted).isActive = true
        
        label2.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        label2.widthAnchor.constraint(equalToConstant: 200.adjusted).isActive = true
        label2.leadingAnchor.constraint(equalTo: icon2.trailingAnchor, constant: 20.adjusted).isActive = true
        label2.topAnchor.constraint(equalTo: etcpage_btn1.bottomAnchor, constant: 21.adjusted).isActive = true
            
        icon2.widthAnchor.constraint(equalToConstant: 24.adjusted).isActive = true
        icon2.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 24.adjusted).isActive = true
        icon2.topAnchor.constraint(equalTo: etcpage_btn1.bottomAnchor, constant: 21.adjusted).isActive = true
        
        etcpage_btn2.widthAnchor.constraint(equalToConstant: 398.adjusted).isActive = true
        etcpage_btn2.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 7.adjusted).isActive = true
        etcpage_btn2.topAnchor.constraint(equalTo: etcpage_btn1.bottomAnchor, constant: 6.adjusted).isActive = true
        
        label3.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        label3.widthAnchor.constraint(equalToConstant: 200.adjusted).isActive = true
        label3.leadingAnchor.constraint(equalTo: icon3.trailingAnchor, constant: 20.adjusted).isActive = true
        label3.topAnchor.constraint(equalTo: etcpage_btn2.bottomAnchor, constant: 17.adjusted).isActive = true
            
        icon3.widthAnchor.constraint(equalToConstant: 27.adjusted).isActive = true
        icon3.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 24.adjusted).isActive = true
        icon3.topAnchor.constraint(equalTo: etcpage_btn2.bottomAnchor, constant: 17.adjusted).isActive = true
        
        etcpage_btn3.widthAnchor.constraint(equalToConstant: 398.adjusted).isActive = true
        etcpage_btn3.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 7.adjusted).isActive = true
        etcpage_btn3.topAnchor.constraint(equalTo: etcpage_btn2.bottomAnchor, constant: 4.adjusted).isActive = true
        
        label4.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        label4.widthAnchor.constraint(equalToConstant: 200.adjusted).isActive = true
        label4.leadingAnchor.constraint(equalTo: icon4.trailingAnchor, constant: 20.adjusted).isActive = true
        label4.topAnchor.constraint(equalTo: etcpage_btn3.bottomAnchor, constant: 18.adjusted).isActive = true
            
        icon4.widthAnchor.constraint(equalToConstant: 24.adjusted).isActive = true
        icon4.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 24.adjusted).isActive = true
        icon4.topAnchor.constraint(equalTo: etcpage_btn3.bottomAnchor, constant: 18.adjusted).isActive = true
        
        etcpage_btn4.widthAnchor.constraint(equalToConstant: 398.adjusted).isActive = true
        etcpage_btn4.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 7.adjusted).isActive = true
        etcpage_btn4.topAnchor.constraint(equalTo: etcpage_btn3.bottomAnchor, constant: 3.adjusted).isActive = true
        
        label5.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        label5.widthAnchor.constraint(equalToConstant: 200.adjusted).isActive = true
        label5.leadingAnchor.constraint(equalTo: icon5.trailingAnchor, constant: 20.adjusted).isActive = true
        label5.topAnchor.constraint(equalTo: etcpage_btn4.bottomAnchor, constant: 16.adjusted).isActive = true
            
        icon5.widthAnchor.constraint(equalToConstant: 24.adjusted).isActive = true
        icon5.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 24.adjusted).isActive = true
        icon5.topAnchor.constraint(equalTo: etcpage_btn4.bottomAnchor, constant: 16.adjusted).isActive = true
        
        etcpage_btn5.widthAnchor.constraint(equalToConstant: 398.adjusted).isActive = true
        etcpage_btn5.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 7.adjusted).isActive = true
        etcpage_btn5.topAnchor.constraint(equalTo: etcpage_btn4.bottomAnchor, constant: 3.adjusted).isActive = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveNext(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name:"Main", bundle:nil)
        let popup = storyBoard.instantiateViewController(withIdentifier:"modify_info")
        popup.modalPresentationStyle = .overCurrentContext
        present(popup, animated: true, completion: nil)
    }
    
    @IBAction func move_meninfo(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name:"Main", bundle:nil)
        if (type == "menti"){
            let popup = storyBoard.instantiateViewController(withIdentifier:"men_info")
            popup.modalPresentationStyle = .overCurrentContext
            present(popup, animated: true, completion: nil)
        }
        else if (type == "mento"){
            let popup = storyBoard.instantiateViewController(withIdentifier:"mentis_info")
            popup.modalPresentationStyle = .overCurrentContext
            present(popup, animated: true, completion: nil)
        }
    }
    
    @IBAction func move_sch(_ sender: Any) {
        if let url = URL(string: "http://cccvlm.com/sns/") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func move_esn(_ sender: Any) {
        if let url = URL(string: "https://www.youtube.com/c/BibleEssence/featured") {
            UIApplication.shared.open(url)
        }
    }
    
}



