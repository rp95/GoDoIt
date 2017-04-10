//
//  CompleteTaskViewController.swift
//  GoDoIt
//
//  Created by Rohan Prakash on 4/9/17.
//  Copyright © 2017 Rohan Prakash. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task = Task()
    var previousVC = TasksViewController()

    
    @IBOutlet weak var taskLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
        

        // Do any additional setup after loading the view.
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
