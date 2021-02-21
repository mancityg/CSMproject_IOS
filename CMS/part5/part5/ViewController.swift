//
//  ViewController.swift
//  part5
//
//  Created by 크선멘 개발 on 2021/01/31.
//

import UIKit

class Device {
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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var alarm_title: UITextField!
    
    // initialize data list
    var alarms = [Alarm]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the data
        loadAlarms()
        
        TableView.dataSource = self
        TableView.delegate = self
        
        let margins = view.layoutMarginsGuide
        
        TableView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 139.adjusted).isActive = true
        
        alarm_title.font = UIFont.systemFont(ofSize: 22.adjusted)
        alarm_title.widthAnchor.constraint(equalToConstant: 57.adjusted).isActive = true
        alarm_title.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20.adjusted).isActive = true
        alarm_title.topAnchor.constraint(equalTo: margins.topAnchor, constant: 96.adjusted).isActive = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    // Set number of sections in tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.alarms.count
    }
    
    // Set number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
 
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1.adjusted
    }

    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "AlarmTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? AlarmTableViewCell
        else{ fatalError("The dequeued cell is not an instance of MealTableViewCell.") }
        
        //Fetches the appropriate alarm for the data source layout.
        let alarm = alarms[indexPath.section]
        
        cell.AlarmType.text = alarm.type
        cell.AlarmTime.text = alarm.gettime
        cell.Icon.image = alarm.icon
        cell.AlarmContent.text = alarm.content
        TableView.rowHeight = 120.adjusted
        
        //cell view enable event
        cell.CellView.isUserInteractionEnabled = true
        let nextTap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        cell.CellView.addGestureRecognizer(nextTap)
        
        //set constraint
        cell.CellView.widthAnchor.constraint(equalToConstant: 388.adjusted).isActive = true
        cell.CellView.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 20.adjusted).isActive = true
        cell.CellView.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 4.adjusted).isActive = true
        
        cell.Icon.widthAnchor.constraint(equalToConstant: 70.adjusted).isActive = true
        cell.Icon.leadingAnchor.constraint(equalTo: cell.CellView.leadingAnchor, constant: 19.adjusted).isActive = true
        cell.Icon.topAnchor.constraint(equalTo: cell.CellView.topAnchor, constant: 15.adjusted).isActive = true
        
        cell.AlarmType.font = UIFont.systemFont(ofSize: 17.adjusted)
        cell.AlarmType.widthAnchor.constraint(equalToConstant: 176.adjusted).isActive = true
        cell.AlarmType.leadingAnchor.constraint(equalTo: cell.Icon.trailingAnchor, constant: 26.adjusted).isActive = true
        cell.AlarmType.topAnchor.constraint(equalTo: cell.CellView.topAnchor, constant: 18.adjusted).isActive = true
        
        cell.AlarmContent.font = UIFont.systemFont(ofSize: 16.adjusted)
        cell.AlarmContent.widthAnchor.constraint(equalToConstant: 259.adjusted).isActive = true
        cell.AlarmContent.leadingAnchor.constraint(equalTo: cell.Icon.trailingAnchor, constant: 26.adjusted).isActive = true
        cell.AlarmContent.topAnchor.constraint(equalTo: cell.AlarmType.bottomAnchor, constant: 7.adjusted).isActive = true
        
        cell.AlarmTime.font = UIFont.systemFont(ofSize: 14.adjusted)
        cell.AlarmTime.widthAnchor.constraint(equalToConstant: 57.adjusted).isActive = true
        cell.AlarmTime.leadingAnchor.constraint(equalTo: cell.AlarmType.trailingAnchor, constant: 32.adjusted).isActive = true
        cell.AlarmTime.topAnchor.constraint(equalTo: cell.CellView.topAnchor, constant: 13.adjusted).isActive = true
        
        return cell
    }
    
    //push move
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        //gesture.view?.backgroundColor = UIColor.white

        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "Chat_page")
        viewcontroller.modalPresentationStyle = .overCurrentContext
        present(viewcontroller, animated: true, completion:nil)
        
 }
    
    /*
    //hover CellView
    @objc func hovering(_ recognizer: UIHoverGestureRecognizer) {
            switch recognizer.state {
            case .began, .changed:
                recognizer.view?.backgroundColor = UIColor.white
            case .ended:
                recognizer.view?.backgroundColor = UIColor.gray
            default:
                break
            }
        }
    */

    private func loadAlarms(){
        
        let icon1 = UIImage(named:"alarm_icon1")
        let icon2 = UIImage(named:"alarm_icon2")
        let icon3 = UIImage(named:"alarm_icon3")
        let icon4 = UIImage(named:"alarm_icon4")
        
        guard let alarm1 = Alarm(type:"공지사항", gettime:"5초전", icon:icon1, content:"화팅화팅~") else { fatalError("unabled")}
        guard let alarm2 = Alarm(type:"댓글", gettime:"1시간전", icon:icon2, content:"화팅화팅~") else { fatalError("unabled")}
        guard let alarm3 = Alarm(type:"멘토 관계 성립", gettime:"2시간전", icon:icon3, content:"멘토 관계가 성립되었습니다.") else { fatalError("unabled")}
        guard let alarm4 = Alarm(type:"멘티 신청", gettime:"3시간전", icon:icon4, content:"고은서 멘티로부터 멘토링 신청이 왔습니다.") else { fatalError("unabled")}
        guard let alarm5 = Alarm(type:"공지사항", gettime:"5초전", icon:icon1, content:"화팅화팅~") else { fatalError("unabled")}
        guard let alarm6 = Alarm(type:"댓글", gettime:"1시간전", icon:icon2, content:"화팅화팅~") else { fatalError("unabled")}
        guard let alarm7 = Alarm(type:"멘토 관계 성립", gettime:"2시간전", icon:icon3, content:"멘토 관계가 성립되었습니다.") else { fatalError("unabled")}
        guard let alarm8 = Alarm(type:"멘티 신청", gettime:"3시간전", icon:icon4, content:"고은서 멘티로부터 멘토링 신청이 왔습니다.") else { fatalError("unabled")}
        
        alarms += [alarm1, alarm2, alarm3, alarm4, alarm5, alarm6, alarm7, alarm8]
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

