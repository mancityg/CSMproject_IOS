//
//  men_info.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/07.
//

import UIKit

class men_info: UIViewController{

    @IBOutlet weak var return_txt: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button_menti: UIButton!
    @IBOutlet weak var return_btn: UIButton!
    @IBOutlet weak var no_men_text: UITextView!
    
    @IBAction func moveNext(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name:"Main", bundle:nil)
        let popup = storyBoard.instantiateViewController(withIdentifier:"reason_check")
        popup.modalPresentationStyle = .overCurrentContext
        present(popup, animated: true, completion: nil)
    }
    
    @IBAction func moveNext_menti(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name:"Main", bundle:nil)
        let popup = storyBoard.instantiateViewController(withIdentifier:"reason_check")
        popup.modalPresentationStyle = .overCurrentContext
        present(popup, animated: true, completion: nil)
    }
    
    
    @IBAction func push_return(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let margins = view.layoutMarginsGuide
        
        // for constraint
        return_btn.widthAnchor.constraint(equalToConstant: 15.adjusted).isActive = true
        return_btn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43.adjusted).isActive = true
        return_btn.topAnchor.constraint(equalTo: margins.topAnchor, constant:33.adjusted).isActive = true
        
        return_txt.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        return_txt.widthAnchor.constraint(equalToConstant: 284.adjusted).isActive = true
        return_txt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 72.adjusted).isActive = true
        return_txt.topAnchor.constraint(equalTo: margins.topAnchor, constant: 33.adjusted).isActive = true
        
        label1.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:16.adjusted)
        label1.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        label1.topAnchor.constraint(equalTo: return_txt.bottomAnchor, constant: 65.adjusted).isActive = true
        
        text1.font = UIFont.systemFont(ofSize: 18.adjusted)
        text1.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        text1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        text1.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 8.adjusted).isActive = true
        
        label2.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:16.adjusted)
        label2.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        label2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        label2.topAnchor.constraint(equalTo: text1.bottomAnchor, constant: 21.adjusted).isActive = true
        
        text2.font = UIFont.systemFont(ofSize: 18.adjusted)
        text2.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        text2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        text2.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 8.adjusted).isActive = true
        
        label3.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:16.adjusted)
        label3.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        label3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        label3.topAnchor.constraint(equalTo: text2.bottomAnchor, constant: 21.adjusted).isActive = true
        
        text3.font = UIFont.systemFont(ofSize: 18.adjusted)
        text3.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        text3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        text3.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 8.adjusted).isActive = true
        
        label4.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:16.adjusted)
        label4.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        label4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        label4.topAnchor.constraint(equalTo: text3.bottomAnchor, constant: 21.adjusted).isActive = true
        
        text4.font = UIFont.systemFont(ofSize: 18.adjusted)
        text4.widthAnchor.constraint(equalToConstant: 337.adjusted).isActive = true
        text4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46.adjusted).isActive = true
        text4.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 8.adjusted).isActive = true
        
        button.widthAnchor.constraint(equalToConstant: 267.adjusted).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80.adjusted).isActive = true
        button.topAnchor.constraint(equalTo: text4.bottomAnchor, constant: 166.adjusted).isActive = true
        
        button_menti.widthAnchor.constraint(equalToConstant: 267.adjusted).isActive = true
        button_menti.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80.adjusted).isActive = true
        button_menti.topAnchor.constraint(equalTo: text4.bottomAnchor, constant: 100.adjusted).isActive = true
        
        // for rounded textfield
        text1.layer.cornerRadius = text1.frame.size.height / 4
        text2.layer.cornerRadius = text2.frame.size.height / 4
        text3.layer.cornerRadius = text3.frame.size.height / 4
        text4.layer.cornerRadius = text4.frame.size.height / 4
    
        // text field deactivate
        text1.isEnabled = false
        text2.isEnabled = false
        text3.isEnabled = false
        text4.isEnabled = false
        
        // set text from DB
        text1.text = "홍길동"
        text2.text = "성균관대학교"
        text3.text = "소프트웨어학과"
        text4.text = "동쪽에서 뿅, 서쪽에서 뿅"
        
        let type: String
        type = "mento"
        
        let men_num: Int
        men_num = 2
        
        if(men_num == 0){
            no_men(type)
        }
        else{
            is_men(type)
        }
        
    }
    
    func is_men(_ type: String){
        //Turn things ON
        no_men_text.isHidden = true
        if(type=="mento"){
            return_txt.text = "멘티 정보"
            label2.text = "관심있는 학교"
            label3.text = "관심있는 전공 및 학과"
            button.isHidden = true
        }
        else if(type=="menti"){
            return_txt.text = "멘토 정보"
            label2.text = "학교"
            label3.text = "전공 및 학과"
            button_menti.isHidden = true
        }
    }

    func no_men(_ type: String){ //Add anything else
        //Turn things OFF
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        text1.isHidden = true
        text2.isHidden = true
        text3.isHidden = true
        text4.isHidden = true
        button_menti.isHidden = true
        button.isHidden = true
        
        if(type=="mento"){
            no_men_text.text = "연결된 멘티가\n없습니다."
        }
        else if(type=="menti"){
            no_men_text.text = "연결된 멘토가\n없습니다."
        }
    }
}
