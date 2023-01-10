//
//  AjoutViewController.swift
//  ToDoListapp
//
//  Created by clemDev on 26/12/2022.
//

import UIKit

class AjoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func AddtaskData(_ sender: UIButton) {
        data = Task(task: nameTask.text!, desc: descName.text!, date: dateTask.text!)
        print("Add0")
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var dateTask: UITextField!
    @IBOutlet weak var descName: UITextField!
    @IBOutlet weak var nameTask: UITextField!

 
    
    
        
    var data: Task?
    
}
