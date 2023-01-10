//
//  EditViewController.swift
//  ToDoListapp
//
//  Created by clemDev on 25/12/2022.
//

import UIKit

class EditViewController: UIViewController , UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        if let task = data {
            nom.text = task.task
            descTask.text = task.desc
            dateTaskEdit.text = task.date
        }
        nom.delegate = self
        descTask.delegate = self
        dateTaskEdit.delegate = self
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //Taske(task: nom.text! , desc: descTask.text! , categorie: "", date: dateTaskEdit.text! , priorite: "")
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  
    @IBOutlet weak var nom: UITextField!
    @IBOutlet weak var descTask: UITextField!
    @IBOutlet weak var dateTaskEdit: UITextField!
    var data: Taske?
}
