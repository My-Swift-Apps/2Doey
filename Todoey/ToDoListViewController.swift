//
//  ViewController.swift
//  Todoey
//
//  Created by Mero on 2020-05-15.
//  Copyright © 2020 Mero. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = [
           "Find money",
           "Food",
           "apple"
       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//MARK: - TableView DataSource Methodes
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let numberOfRows = itemArray.count
        return numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // here we are creating a resuable cell => Returns a reusable table-view cell object for the specified reuse identifier and adds it to the table.
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        // setting the each cell textlabel with the item in the array
        cell.textLabel?.text = itemArray [ indexPath.row]
        return cell
    }

//MARK: - TableView  Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

