//
//  TaskVC.swift
//  TODO-List
//
//  Created by Александр on 01.03.2022.
//

import UIKit

class TaskVC: UIViewController {

    @IBOutlet weak var userTaskField: UITextField!

    weak var saveTaskDelegate: SaveUserTaskDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTaskBtnPressed(_ sender: Any) {
        if let task = userTaskField.text {
            if !task.isEmpty {
                let task = TaskModel(taskName: task, taskCellColor: .white)
                saveTaskDelegate?.saveTask(task: task)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
