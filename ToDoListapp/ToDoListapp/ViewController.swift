//
//  ViewController.swift
//  ToDoListapp
//
//  Created by clemDev on 24/12/2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    
    
    
    
    
    @IBOutlet weak var taskTableView: UITableView!
   
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        taskTableView.deselectRow(at: indexPath, animated: true)
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskTableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskTableViewCell
        let row = indexPath.row
        cell.nameTask.text = tasks[row].task
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let configuration = UISwipeActionsConfiguration(actions: [UIContextualAction(style: .destructive, title: "Delete", handler:{(action,view,completationHandler) in
            let row = indexPath.row
            self.tasks.remove(at:row)
            completationHandler(true)
            tableView.reloadData()
        })
        ])
        return configuration
     }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let piano = Task(task: "Piano", desc: "Jouer du piano 10 min le matin.", date: "1/01/2023")
        let ios = Task(task: "IOS", desc: "Rendre le projet IOS pour vendredi 13/01.", date: "11/01/2023")
        let coiffeur = Task(task: "Coiffeur", desc: "Aller chez le coiffeur.", date: "10/01/2023")
        tasks.append(piano)
        tasks.append(ios)
        tasks.append(coiffeur)
        taskTableView.dataSource = self
        taskTableView.delegate = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewControllerMain {
            let row = taskTableView.indexPathForSelectedRow!.row
            vc.data = tasks[row]
    
    }
    }

    

    
    
    @IBAction func Trier(_ sender: UIBarButtonItem) {
        tasks.sort(by: {$0.date < $1.date})
        taskTableView.reloadData()
    }
    
        
    @IBAction func cancel(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? AjoutViewController {
            print("cancel")
            
            vc.dismiss(animated: true, completion: nil)
            
        }
                
    }
    @IBAction func add(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? AjoutViewController {
   
            if let Addtask = vc.data {
                print("add1")
                let Newtask = Task(task: Addtask.task , desc:  Addtask.desc, date:  Addtask.date )
                tasks.append(Newtask)
                taskTableView.reloadData()
           
            
            }
                    
        }
                
    }
    var tasks = [Task]()
    
     
    
    

    

}
    






