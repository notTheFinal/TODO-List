//
//  TaskListTVC.swift
//  TODO-List
//
//  Created by Александр on 01.03.2022.
//

import UIKit

class TaskListTVC: UITableViewController {

    var vc = TaskVC()
    var arrayUserTasks = [TaskModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUserTasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as? TaskCell else { return UITableViewCell() }
        arrayUserTasks[indexPath.row].currentIndex = indexPath
        let task = arrayUserTasks[indexPath.row]
        cell.cellData(task: task)
        cell.removeTaskDelegate = self
        cell.taskCompletedDelegate = self
        return cell
    }

    @IBAction func showTaskVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(withIdentifier: "TaskVC") as! TaskVC
        vc.saveTaskDelegate = self
        
        present(vc, animated: true, completion: nil)
    }
    

}

extension TaskListTVC: SaveUserTaskDelegate {
    func saveTask(task: TaskModel) {
        arrayUserTasks.append(task)
        tableView.reloadData()
    }
}

extension TaskListTVC: RemoveTaskDelegate {
    func removeTask(task: TaskModel) {
        guard let taskByIndex = task.currentIndex?.item else {return}
        arrayUserTasks.remove(at: taskByIndex)
        tableView.reloadData()
    }
}

extension TaskListTVC: TaskCompletedDelegate {
    func taskComplet(task: TaskModel) {
        guard let taskByIndex = task.currentIndex?.item else {return}
        arrayUserTasks[taskByIndex].taskCellColor = #colorLiteral(red: 0.4666, green: 0.76, blue: 0.70, alpha: 1)
        tableView.reloadData()
    }

}

