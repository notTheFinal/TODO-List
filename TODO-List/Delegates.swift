//
//  Delegates.swift
//  TODO-List
//
//  Created by Александр on 01.03.2022.
//

import Foundation

protocol SaveUserTaskDelegate: class {
    func saveTask(task: TaskModel)
}

protocol RemoveTaskDelegate: class {
    func removeTask(task: TaskModel)
}

protocol TaskCompletedDelegate: class {
    func taskComplet(task: TaskModel)
}
