//
//  TaskTableViewCell.swift
//  ToDoListapp
//
//  Created by clemDev on 25/12/2022.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var nameTask: UILabel!
    var etat = false
    @IBOutlet weak var doneButton: UIButton!
    
    
    
    @IBAction func checkButton(_ sender: UIButton) {
        if !etat {
            doneButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
                print("do")
            etat = true
        }else{
            doneButton.setImage(UIImage(systemName: "square") , for: .normal)
            print("Pasdo")
            etat = false
        }
    }
    
}
