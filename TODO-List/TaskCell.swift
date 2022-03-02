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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func executeTaskBtnPressed(_ sender: Any) {
    }
    
    @IBAction func removeTaskBtnPressed(_ sender: Any) {
    }
    
}
