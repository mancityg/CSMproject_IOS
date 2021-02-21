//
//  reason_check.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/10.
//

import UIKit

class reason_check: UIViewController{

    @IBOutlet weak var caution_title: UILabel!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var check_btn1: UIButton!
    @IBOutlet weak var check_btn2: UIButton!
    @IBOutlet weak var check_btn3: UIButton!
    @IBOutlet weak var check_btn4: UIButton!
    @IBOutlet weak var noncheck_btn1: UIButton!
    @IBOutlet weak var noncheck_btn2: UIButton!
    @IBOutlet weak var noncheck_btn3: UIButton!
    @IBOutlet weak var noncheck_btn4: UIButton!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var reason: UILabel!
    @IBOutlet weak var discon_btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for caution title shadow
        let shadowRadius: CGFloat = 4
        let shadowWidth: CGFloat = 1.0
        let shadowHeight: CGFloat = 0.03
        
        let height: CGFloat = 77.adjusted
        let width: CGFloat = 428.adjusted

        let shadowPath = UIBezierPath()
        shadowPath.move(to: CGPoint(x: shadowRadius / 2, y: height - shadowRadius / 2))
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius / 2, y: height - shadowRadius / 2))
        shadowPath.addLine(to: CGPoint(x: width * shadowWidth, y: height + (height * shadowHeight)))
        shadowPath.addLine(to: CGPoint(x: width * -(shadowWidth - 1), y: height + (height * shadowHeight)))
        caution_title.layer.shadowPath = shadowPath.cgPath
        caution_title.layer.shadowRadius = shadowRadius
        caution_title.layer.shadowOffset = .zero
        caution_title.layer.shadowOpacity = 0.1
        
        // for rounded text field
        text1.layer.cornerRadius = text1.frame.size.height / 4
        text2.layer.cornerRadius = text2.frame.size.height / 4
        text3.layer.cornerRadius = text3.frame.size.height / 4
        text4.layer.cornerRadius = text4.frame.size.height / 4
        
        // text field deactivate
        text1.isEnabled = false
        text2.isEnabled = false
        text3.isEnabled = false
        text4.isEnabled = false
    
        // check button
        check_btn1.isHidden = true
        check_btn2.isHidden = true
        check_btn3.isHidden = true
        check_btn4.isHidden = true
        
        // set constraint
        let margins = view.layoutMarginsGuide
        caution_title.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:29.adjusted)
        caution_title.widthAnchor.constraint(equalToConstant: 428.adjusted).isActive = true
        caution_title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.adjusted).isActive = true
        caution_title.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0.adjusted).isActive = true
        
        text.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:16.adjusted)
        text.widthAnchor.constraint(equalToConstant: 181.adjusted).isActive = true
        text.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 124.adjusted).isActive = true
        text.topAnchor.constraint(equalTo: caution_title.bottomAnchor, constant: 63.adjusted).isActive = true
        
        reason.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:16.adjusted)
        reason.widthAnchor.constraint(equalToConstant: 76.adjusted).isActive = true
        reason.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22.adjusted).isActive = true
        reason.topAnchor.constraint(equalTo: caution_title.bottomAnchor, constant: 135.adjusted).isActive = true
        
        var text_list = [UITextField]()
        text_list += [text1, text2, text3, text4]
        
        var check_list = [UIButton]()
        check_list += [check_btn1, check_btn2, check_btn3, check_btn4]
        
        for (n, c) in check_list.enumerated(){
            c.widthAnchor.constraint(equalToConstant: 25.adjusted).isActive = true
            c.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40.adjusted).isActive = true
            if ((n != 0)){
                c.topAnchor.constraint(equalTo: check_list[n-1].bottomAnchor, constant: 50.adjusted).isActive = true
            }
        }
        
        var non_check_list = [UIButton]()
        non_check_list += [noncheck_btn1, noncheck_btn2, noncheck_btn3, noncheck_btn4]
        
        for (n, c) in non_check_list.enumerated(){
            c.widthAnchor.constraint(equalToConstant: 25.adjusted).isActive = true
            c.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40.adjusted).isActive = true
            if ((n != 0)){
                c.topAnchor.constraint(equalTo: non_check_list[n-1].bottomAnchor, constant: 50.adjusted).isActive = true
            }
        }
        
        check_btn1.topAnchor.constraint(equalTo: reason.bottomAnchor, constant: 41.adjusted).isActive = true
        noncheck_btn1.topAnchor.constraint(equalTo: reason.bottomAnchor, constant: 41.adjusted).isActive = true
        
        for (n, t) in text_list.enumerated(){
            t.font = UIFont(name:"AppleSDGothicNeo-Regular", size:18.adjusted)
            t.widthAnchor.constraint(equalToConstant: 311.adjusted).isActive = true
            t.leadingAnchor.constraint(equalTo: check_list[n].trailingAnchor, constant: 8.adjusted).isActive = true
            if (n != 0){
            t.topAnchor.constraint(equalTo: text_list[n-1].bottomAnchor, constant: 30.adjusted).isActive = true
            }
        }
        text1.topAnchor.constraint(equalTo: reason.bottomAnchor, constant: 31.adjusted).isActive = true
        
        discon_btn.widthAnchor.constraint(equalToConstant: 209.adjusted).isActive = true
        discon_btn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 109.adjusted).isActive = true
        discon_btn.topAnchor.constraint(equalTo: text4.bottomAnchor, constant: 60.adjusted).isActive = true
    }
    @IBAction func check1(_ sender: Any) {
        noncheck_btn1.isHidden = false
        check_btn1.isHidden = true
    }
    
     @IBAction func check2(_ sender: Any) {
        noncheck_btn2.isHidden = false
        check_btn2.isHidden = true
     }
   
    @IBAction func check3(_ sender: Any) {
        noncheck_btn3.isHidden = false
        check_btn3.isHidden = true
    }
    
    @IBAction func check4(_ sender: Any) {
        noncheck_btn4.isHidden = false
        check_btn4.isHidden = true
    }

    @IBAction func noncheck1(_ sender: Any) {
        check_btn1.isHidden = false
        noncheck_btn1.isHidden = true
    }
    @IBAction func noncheck2(_ sender: Any) {
        check_btn2.isHidden = false
        noncheck_btn2.isHidden = true
    }
    @IBAction func noncheck3(_ sender: Any) {
        check_btn3.isHidden = false
        noncheck_btn3.isHidden = true
    }
    @IBAction func noncheck4(_ sender: Any) {
        check_btn4.isHidden = false
        noncheck_btn4.isHidden = true
    }
    
    @IBAction func disconnect(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name:"Main",bundle: nil)
        let popup = storyBoard.instantiateViewController(withIdentifier: "disconnect_popup")
        popup.modalPresentationStyle = .overCurrentContext
        present(popup,animated: true, completion: nil)
    }
    
    /*
    private func createRadioButton(frame : CGRect, title : String, color : UIColor) -> DLRadioButton {
            let radioButton = DLRadioButton(frame: frame);
            radioButton.titleLabel!.font = UIFont.systemFont(ofSize: 14);
            radioButton.setTitle(title, for: []);
            radioButton.setTitleColor(color, for: []);
            radioButton.iconColor = color;
            radioButton.indicatorColor = color;
            radioButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left;
            radioButton.addTarget(self, action: #selector(DemoViewController.logSelectedButton), for: UIControl.Event.touchUpInside);
            self.view.addSubview(radioButton);
            
            return radioButton;
    }
    */

}
