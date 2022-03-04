//
//  TaskCell.swift
//  TODO-List
//
//  Created by Александр on 01.03.2022.
//

import UIKit

class TaskCell: UITableViewCell {


    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var someTask: UILabel!
    weak var removeTaskDelegate: RemoveTaskDelegate?
    weak var taskCompletedDelegate: TaskCompletedDelegate?
    
    var task: TaskModel?
    
    func cellData(task: TaskModel) {
        someTask.text = task.taskName
        viewCell.backgroundColor = task.taskCellColor
        self.task = task
      }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func executeTaskBtnPressed(_ sender: Any) {
        guard let task = task else {return}
        taskCompletedDelegate?.taskComplet(task: task)
    }
    
    @IBAction func removeTaskBtnPressed(_ sender: Any) {
        guard let task = task else {return}
        removeTaskDelegate?.removeTask(task: task)
    }
    
}
