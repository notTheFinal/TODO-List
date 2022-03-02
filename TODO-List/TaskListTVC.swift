//
//  TaskListTVC.swift
//  TODO-List
//
//  Created by Александр on 01.03.2022.
//

import UIKit

class TaskListTVC: UITableViewController {

    var vc = TaskVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    @IBAction func showTaskVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "TaskVC") as! TaskVC
        present(vc, animated: true, completion: nil)
    }
    

}
