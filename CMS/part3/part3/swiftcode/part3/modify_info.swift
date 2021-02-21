//
//  modify_info.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/06.
//

import UIKit

class modify_info: UIViewController{

    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var title_text: UILabel!
    @IBOutlet weak var return_btn: UIButton!
 
    @IBOutlet weak var text1: TextField_custom!
    @IBOutlet weak var text2: TextField_custom!
    @IBOutlet weak var text3: TextField_custom!
    @IBOutlet weak var text4: TextField_custom!
    @IBOutlet weak var text5: TextField_custom!
    @IBOutlet weak var text6: TextField_custom!
    @IBOutlet weak var text7: TextField_custom!
    @IBOutlet weak var text_multiline: UITextView!
    @IBOutlet weak var save_btn: UIButton!
    @IBOutlet weak var modify_btn: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var profile_img: UIImageView!
    @IBOutlet weak var camera_btn: UIButton!
    @IBOutlet weak var hash1: hashtag_custom!
    @IBOutlet weak var hash2: hashtag_custom!
    @IBOutlet weak var hash3: hashtag_custom!
    
    @IBOutlet weak var hash4: hashtag_custom!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // deactivate
        textFieldDeactive()
        
        // set text from DB
        text1.text = "홍길동"
        text2.text = "20"
        text3.text = "성균관대학교"
        text4.text = "소프트웨어학과"
        text5.text = "수원시"
        text6.text = "example@gmail.com"
        text7.text = "2000.00.00"
        text_multiline.text = "반가워요 여러분 :)"
        
        var type: String
        type = "menti"
        
        if(type=="mento"){
            label3.text = "학교"
            label4.text = "전공 및 학과"
        }
        else if(type=="menti"){
            label3.text = "관심있는 학교"
            label4.text = "관심있는 전공 및 학과"
        }
        
        var text = [UITextField]()
        text += [text1, text2, text3, text4, text5, text6, text7]
        var label = [UILabel]()
        label += [label1, label2, label3, label4, label5, label6, label7, label8]
        
        // for rounded textfield
        for t in text{
            t.layer.cornerRadius = t.frame.size.height / 4
        }
        text_multiline.layer.cornerRadius = text_multiline.frame.size.height / 16
        text_multiline.textContainerInset = UIEdgeInsets(top: 15.adjusted, left: 10.adjusted, bottom: 15.adjusted, right: 10.adjusted)
        
        //get hash
        var hash = [hashtag_custom]()
        hash += [hash1, hash2, hash3, hash4]
        
        for h in hash{
            h.backgroundColor = UIColor.white
            h.layer.borderWidth = 1
            h.layer.borderColor = UIColor(displayP3Red: 106/255, green: 170/256, blue: 145/256, alpha: 1).cgColor
            h.padding = UIEdgeInsets(top: 6, left: 10, bottom: 6, right: 10)
            h.sizeToFit()
            h.layer.cornerRadius = h.frame.height/2
            h.layer.masksToBounds = true
            h.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:14.adjusted)
        }
        
        //profile_img ring
        profile_img.layer.borderWidth = 3.adjusted
        profile_img.layer.borderColor = UIColor(displayP3Red: 246/255, green: 199/256, blue: 122/256, alpha: 1).cgColor
        profile_img.layer.cornerRadius = 154.adjusted / 2     // profile_img.frame.size.width / 2
        profile_img.layer.masksToBounds = true
        
        //set constraint
        let margins = scroll_view.contentLayoutGuide
        
        return_btn.widthAnchor.constraint(equalToConstant: 15.adjusted).isActive = true
        return_btn.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 43.adjusted).isActive = true
        return_btn.topAnchor.constraint(equalTo: margins.topAnchor, constant: 42.adjusted).isActive = true
        
        title_text.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        title_text.widthAnchor.constraint(equalToConstant: 284.adjusted).isActive = true
        title_text.leadingAnchor.constraint(equalTo: return_btn.trailingAnchor, constant: 14.adjusted).isActive = true
        title_text.topAnchor.constraint(equalTo: margins.topAnchor, constant: 43.adjusted).isActive = true
        
        profile_img.widthAnchor.constraint(equalToConstant: 154.adjusted).isActive = true
        profile_img.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 46.adjusted).isActive = true
        profile_img.topAnchor.constraint(equalTo: return_btn.bottomAnchor, constant: 48.adjusted).isActive = true
        
        camera_btn.widthAnchor.constraint(equalToConstant: 44.adjusted).isActive = true
        camera_btn.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 156.adjusted).isActive = true
        camera_btn.topAnchor.constraint(equalTo: title_text.bottomAnchor, constant: 159.adjusted).isActive = true
        
        hash1.leadingAnchor.constraint(equalTo: profile_img.trailingAnchor, constant: 30.adjusted).isActive = true
        hash1.topAnchor.constraint(equalTo: title_text.bottomAnchor, constant: 93.adjusted).isActive = true
        
        hash2.leadingAnchor.constraint(equalTo: hash1.trailingAnchor, constant: 10.adjusted).isActive = true
        hash2.topAnchor.constraint(equalTo: title_text.bottomAnchor, constant: 93.adjusted).isActive = true
        
        hash3.leadingAnchor.constraint(equalTo: profile_img.trailingAnchor, constant: 30.adjusted).isActive = true
        hash3.topAnchor.constraint(equalTo: hash1.bottomAnchor, constant: 25.adjusted).isActive = true
        
        hash4.leadingAnchor.constraint(equalTo: hash3.trailingAnchor, constant: 10.adjusted).isActive = true
        hash4.topAnchor.constraint(equalTo: hash2.bottomAnchor, constant: 25.adjusted).isActive = true
        
        for (n, t) in text.enumerated(){
            t.font = UIFont(name:"AppleSDGothicNeo-Regular", size:18.adjusted)
            t.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
            t.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 46.adjusted).isActive = true
            t.topAnchor.constraint(equalTo: label[n].bottomAnchor, constant: 11.adjusted).isActive = true
        }
        for (n, l) in label.enumerated(){
            l.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:16.adjusted)
            l.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 46.adjusted).isActive = true
            l.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
            if (n != 0){
                l.topAnchor.constraint(equalTo: text[n-1].bottomAnchor, constant: 13.adjusted).isActive = true
            }
        }
        label1.topAnchor.constraint(equalTo: profile_img.bottomAnchor, constant: 45.adjusted).isActive = true
        
        text_multiline.font = UIFont(name:"AppleSDGothicNeo-Regular", size:18.adjusted)
        text_multiline.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        text_multiline.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 46.adjusted).isActive = true
        text_multiline.topAnchor.constraint(equalTo: label8.bottomAnchor, constant: 11.adjusted).isActive = true
        
        save_btn.widthAnchor.constraint(equalToConstant: 82.adjusted).isActive = true
        save_btn.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 301.adjusted).isActive = true
        save_btn.topAnchor.constraint(equalTo: text_multiline.bottomAnchor, constant: 71.adjusted).isActive = true
        
        modify_btn.widthAnchor.constraint(equalToConstant: 82.adjusted).isActive = true
        modify_btn.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 301.adjusted).isActive = true
        modify_btn.topAnchor.constraint(equalTo: text_multiline.bottomAnchor, constant: 71.adjusted).isActive = true
    }

    @IBAction func push_return(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func push_modify(_ sender: Any) {
        textFieldActive()
    }
    @IBAction func push_save(_ sender: Any) {
        textFieldDeactive()
    }
    
    func textFieldActive(){
        //Turn things ON
        text1.isEnabled = true
        text2.isEnabled = true
        text3.isEnabled = true
        text4.isEnabled = true
        text5.isEnabled = true
        text6.isEnabled = true
        text7.isEnabled = true
        text_multiline.isEditable = true
        modify_btn.isHidden = true
        save_btn.isHidden = false
        text1.textColor = UIColor.gray
        text2.textColor = UIColor.gray
        text3.textColor = UIColor.gray
        text4.textColor = UIColor.gray
        text5.textColor = UIColor.gray
        text6.textColor = UIColor.gray
        text7.textColor = UIColor.gray
        text_multiline.textColor = UIColor.gray
    }

    func textFieldDeactive(){ //Add anything else
        //Turn things OFF
        text1.isEnabled = false
        text2.isEnabled = false
        text3.isEnabled = false
        text4.isEnabled = false
        text5.isEnabled = false
        text6.isEnabled = false
        text7.isEnabled = false
        text_multiline.isEditable = false
        modify_btn.isHidden = false
        save_btn.isHidden = true
        text1.textColor = UIColor.black
        text2.textColor = UIColor.black
        text3.textColor = UIColor.black
        text4.textColor = UIColor.black
        text5.textColor = UIColor.black
        text6.textColor = UIColor.black
        text7.textColor = UIColor.black
        text_multiline.textColor = UIColor.black
    }
}
