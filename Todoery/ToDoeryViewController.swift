//
//  ViewController.swift
//  Todoery
//
//  Created by ali tolpa on 5/30/19.
//  Copyright © 2019 ali tolpa. All rights reserved.
//

import UIKit

class ToDoeryViewController: UITableViewController {
var   listArray = ["egg" , "milk" , "bread "]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoeryItem:List", for: indexPath)
        cell.textLabel?.text = listArray[indexPath.row]
        return cell
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else{tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
                    }
    
    
    
    
    
    }//make remote repositry from xcode
    


    @IBAction func addItemToList(_ sender: Any) {
       
        var texetField = UITextField()
        
        let alert = UIAlertController.init(title: "To Add item in the list", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction.init(title: "Add item", style: .default) { (action) in
            self.listArray.append(texetField.text!)
            self.tableView.reloadData()
        }
   
    alert.addAction(action)
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = " type your added item"
            print(alertTextField.text)
            texetField = alertTextField
            
        }

        
        
        present(alert, animated: true, completion: nil)
    
    
    
    
    }
    

}

