//
//  DetailViewControllerMain.swift
//  ToDoListapp
//
//  Created by clemDev on 25/12/2022.
//

import UIKit

class DetailViewControllerMain: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let task = data {
            name.text = task.task
            desc.text = task.desc
            date.text = task.date
        }else{
            name.text = "ERROR"
            desc.text = ""
            date.text = ""
        }

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var desc: UILabel!
    var data: Task?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
