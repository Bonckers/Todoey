//
//  ViewController.swift
//  Todoey
//
//  Created by SHAUN BONCKER on 21/3/19.
//  Copyright © 2019 ShaunB. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["do poops", "eat foodz", "exercise"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Tableview Datasource Method
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
        
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
        
    //MARK - Tableview Delegate Method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(itemArray[indexPath.row])
        
        //adds & removes checkmarks

        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
             tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
               tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //stop being grey in the row permanently
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
    }


}

