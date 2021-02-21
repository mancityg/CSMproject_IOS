//
//  mentis_info.swift
//  part3
//
//  Created by 크선멘 개발 on 2021/02/19.
//

import UIKit

class mentis_info: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var mentis_table: UITableView!
    @IBOutlet weak var return_btn: UIButton!
    @IBOutlet weak var title_label: UILabel!
    
    // initialize data list
    var mentis = [menti]()
   
    override func viewDidLoad() {
        loadMentis()
        
        mentis_table.dataSource = self
        mentis_table.delegate = self
        
        //set constraint
        let margins = view.layoutMarginsGuide
        
        // for constraint
        return_btn.widthAnchor.constraint(equalToConstant: 15.adjusted).isActive = true
        return_btn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43.adjusted).isActive = true
        return_btn.topAnchor.constraint(equalTo: margins.topAnchor, constant:33.adjusted).isActive = true
        
        title_label.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:21.adjusted)
        title_label.widthAnchor.constraint(equalToConstant: 284.adjusted).isActive = true
        title_label.leadingAnchor.constraint(equalTo: return_btn.trailingAnchor, constant: 14.adjusted).isActive = true
        title_label.topAnchor.constraint(equalTo: margins.topAnchor, constant:33.adjusted).isActive = true
        
        mentis_table.widthAnchor.constraint(equalToConstant: 428.adjusted).isActive = true
        mentis_table.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.adjusted).isActive = true
        mentis_table.topAnchor.constraint(equalTo: return_btn.bottomAnchor, constant:21.adjusted).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    // Set number of sections in tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.mentis.count
    }
    
    // Set number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
 
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 8.adjusted
    }

    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "menti_cell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? menti_cell
        else{ fatalError("The dequeued cell is not an instance of MealTableViewCell.") }
        
        //Fetches the appropriate alarm for the data source layout.
        let menti = mentis[indexPath.section]
        
        cell.profile_img.image = menti.profile_img
        cell.name.text = menti.name
        cell.label1.text = menti.label1
        cell.info.attributedText = menti.info
        cell.hashtag1.text = menti.hashtag1
        cell.hashtag2.text = menti.hashtag2
        cell.hashtag3.text = menti.hashtag3
        cell.hashtag4.text = menti.hashtag4
        cell.hashtag5.text = menti.hashtag5
        
        //remove cell selection style
        cell.selectionStyle = .none
        
        //cell view enable event
        cell.CellView.isUserInteractionEnabled = true
        let nextTap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        cell.CellView.addGestureRecognizer(nextTap)
        
        //view.addSubview(cell.hashtag1)
        var hash = [hashtag_custom]()
        hash += [cell.hashtag1, cell.hashtag2, cell.hashtag3, cell.hashtag4, cell.hashtag5]
        
        for h in hash{
            h.backgroundColor = UIColor.white
            h.layer.borderWidth = 1
            h.layer.borderColor = UIColor(displayP3Red: 106/255, green: 170/256, blue: 145/256, alpha: 1).cgColor
            h.padding = UIEdgeInsets(top: 6, left: 10, bottom: 6, right: 10)
            h.sizeToFit()
            h.layer.cornerRadius = h.frame.height/2
            h.layer.masksToBounds = true
            h.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:9.adjusted)
        }
        
        //set constraint
        cell.CellView.widthAnchor.constraint(equalToConstant: 352.adjusted).isActive = true
        cell.CellView.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 34.adjusted).isActive = true
        cell.CellView.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 0.adjusted).isActive = true
        
        cell.label1.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:11.adjusted)
        cell.label1.widthAnchor.constraint(equalToConstant: 125.adjusted).isActive = true
        cell.label1.leadingAnchor.constraint(equalTo: cell.CellView.leadingAnchor, constant: 14.adjusted).isActive = true
        cell.label1.topAnchor.constraint(equalTo: cell.CellView.topAnchor, constant: 13.adjusted).isActive = true
        
        cell.profile_img.widthAnchor.constraint(equalToConstant: 102.adjusted).isActive = true
        cell.profile_img.leadingAnchor.constraint(equalTo: cell.CellView.leadingAnchor, constant: 37.adjusted).isActive = true
        cell.profile_img.topAnchor.constraint(equalTo: cell.label1.bottomAnchor, constant: 27.adjusted).isActive = true
        
        cell.name.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:11.adjusted)
        cell.name.widthAnchor.constraint(equalToConstant: 43.adjusted).isActive = true
        cell.name.leadingAnchor.constraint(equalTo: cell.profile_img.trailingAnchor, constant: 43.adjusted).isActive = true
        cell.name.topAnchor.constraint(equalTo: cell.CellView.topAnchor, constant: 55.adjusted).isActive = true
        
        cell.info.font = UIFont(name:"AppleSDGothicNeo-SemiBold", size:11.adjusted)
        cell.info.widthAnchor.constraint(equalToConstant: 61.adjusted).isActive = true
        cell.info.leadingAnchor.constraint(equalTo: cell.name.trailingAnchor, constant: 3.adjusted).isActive = true
        cell.info.topAnchor.constraint(equalTo: cell.CellView.topAnchor, constant: 52.adjusted).isActive = true
        
        cell.hashtag1.leadingAnchor.constraint(equalTo: cell.profile_img.trailingAnchor, constant: 36.adjusted).isActive = true
        cell.hashtag1.topAnchor.constraint(equalTo: cell.info.bottomAnchor, constant: 8.adjusted).isActive = true
        
        cell.hashtag2.leadingAnchor.constraint(equalTo: cell.hashtag1.trailingAnchor, constant: 8.adjusted).isActive = true
        cell.hashtag2.topAnchor.constraint(equalTo: cell.CellView.topAnchor, constant: 81.adjusted).isActive = true
        
        cell.hashtag3.leadingAnchor.constraint(equalTo: cell.profile_img.trailingAnchor, constant: 36.adjusted).isActive = true
        cell.hashtag3.topAnchor.constraint(equalTo: cell.hashtag1.bottomAnchor, constant: 14.33.adjusted).isActive = true
        
        cell.hashtag4.leadingAnchor.constraint(equalTo: cell.hashtag3.trailingAnchor, constant: 8.adjusted).isActive = true
        cell.hashtag4.topAnchor.constraint(equalTo: cell.hashtag1.bottomAnchor, constant: 14.33.adjusted).isActive = true
        
        cell.hashtag5.leadingAnchor.constraint(equalTo: cell.hashtag4.trailingAnchor, constant: 8.adjusted).isActive = true
        cell.hashtag5.topAnchor.constraint(equalTo: cell.hashtag2.bottomAnchor, constant: 14.33.adjusted).isActive = true
        
        mentis_table
            .rowHeight = 205.adjusted
        
        return cell
    }
    
    //push move
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let viewcontroller = storyboard.instantiateViewController(withIdentifier: "men_info")
        viewcontroller.modalPresentationStyle = .overCurrentContext
        present(viewcontroller, animated: true, completion:nil)
    }
    
    /*
    @objc func handleTap(sender: UITapGestureRecognizer) {
            debugPrint("touchesBegan")

            // 제스쳐가 끝났는지 확인 후 코드 진행
        if sender.state == .ended {
                if let af = activeField {
                    af.endEditing(true)
                }

                if let imageView = sender.view as? UIImageView {
                    debugPrint("imageView = \(imageView)")
                    let indexPath = NSIndexPath(forRow: 0, inSection: 1)
                    collectionView.scrollToItemAtIndexPath(indexPath, atScrollPosition: .Top, animated: true)
                }
            }
    }
    */
    
    @IBAction func push_return(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    private func loadMentis(){
        
        // DB 연동되면 for 문으로 바꾸기
        let img1 = UIImage(named:"part3_faceimg")
        
        var fullString: NSMutableAttributedString
        fullString = get_info_text("25", "men")
        
        guard let menti1 = menti(profile_img:img1!, name:"차지영 님", label1:"류준열님의 멘티입니다.", info:fullString, hashtag1:"진짜_마지막_최종파일.psd", hashtag2:"화석", hashtag3:"#반오십", hashtag4:"화석", hashtag5:"굳굳..") else { fatalError("unabled")}
        guard let menti2 = menti(profile_img:img1!, name:"차지영 님", label1:"류준열님의 멘티입니다.", info:fullString, hashtag1:"진짜_마지막_최종파일.psd", hashtag2:"화석", hashtag3:"#반오십", hashtag4:"화석", hashtag5:"굳굳..") else { fatalError("unabled")}
        guard let menti3 = menti(profile_img:img1!, name:"차지영 님", label1:"류준열님의 멘티입니다.", info:fullString, hashtag1:"진짜_마지막_최종파일.psd", hashtag2:"화석", hashtag3:"#반오십", hashtag4:"화석", hashtag5:"굳굳..") else { fatalError("unabled")}
        guard let menti4 = menti(profile_img:img1!, name:"차지영 님", label1:"류준열님의 멘티입니다.", info:fullString, hashtag1:"진짜_마지막_최종파일.psd", hashtag2:"화석", hashtag3:"#반오십", hashtag4:"화석", hashtag5:"굳굳..") else { fatalError("unabled")}
        
        mentis += [menti1, menti2, menti3, menti4]
    }
    
    func get_info_text(_ year:String, _ gender:String) -> NSMutableAttributedString
    {
        let image1Attachment = NSTextAttachment()
        if(gender == "men"){
            image1Attachment.image = UIImage(named: "men.png")!.resized(toWidth: 8.0)
        }
        else if(gender == "women"){
            image1Attachment.image = UIImage(named: "women.png")!.resized(toWidth: 8.0)
        }
        let fullString = NSMutableAttributedString(string: "( " + year + " / ")
        let image1String = NSAttributedString(attachment: image1Attachment)
        fullString.append(image1String)
        fullString.append(NSAttributedString(string: " )"))
        return fullString
    }
}

extension UIImage {
    func resized(withPercentage percentage: CGFloat, isOpaque: Bool = true) -> UIImage? {
        let canvas = CGSize(width: size.width * percentage, height: size.height * percentage)
        let format = imageRendererFormat
        format.opaque = isOpaque
        return UIGraphicsImageRenderer(size: canvas, format: format).image {
            _ in draw(in: CGRect(origin: .zero, size: canvas))
        }
    }
    func resized(toWidth width: CGFloat, isOpaque: Bool = true) -> UIImage? {
        let canvas = CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))
        let format = imageRendererFormat
        format.opaque = isOpaque
        return UIGraphicsImageRenderer(size: canvas, format: format).image {
            _ in draw(in: CGRect(origin: .zero, size: canvas))
        }
    }
}
