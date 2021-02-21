//
//  AlarmTableViewController.swift
//  part5
//
//  Created by 크선멘 개발 on 2021/02/01.
//

import UIKit

class AlarmTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var alarms = [Alarm]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the data
        loadAlarms()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarms.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "AlarmTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? AlarmTableViewCell
        else{ fatalError("The dequeued cell is not an instance of MealTableViewCell.") }
        
        //Fetches the appropriate alarm for the data source layout.
        let alarm = alarms[indexPath.row]
        
        cell.AlarmType.text = alarm.type
        cell.Icon.image = alarm.icon
        cell.AlarmContent.text = alarm.content
        
        return cell
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

    private func loadAlarms(){
        
        let icon1 = UIImage(named:"alarm_icon1")
        let icon2 = UIImage(named:"alarm_icon2")
        //let icon3 = UIImage(named:"alarm_icon3")
        //let icon4 = UIImage(named:"alarm_icon4")
        
        guard let alarm1 = Alarm(type:"공지사항", icon:icon1, content:"화팅화팅~") else { fatalError("unabled")}
        guard let alarm2 = Alarm(type:"공지사항", icon:icon2, content:"화팅화팅~") else { fatalError("unabled")}
        
        alarms += [alarm1, alarm2]
    }}
