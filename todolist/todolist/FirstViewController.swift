//
//  FirstViewController.swift
//  todolist
//
//  Created by Nurzhan Ababakirov on 10/10/19.
//  Copyright © 2019 Nurzhan Ababakirov. All rights reserved.
//

import UIKit

var list = ["Gei"]
var sList = ["Gei"]

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
  
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
 
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = list[row]
        cell.detailTextLabel?.text = sList[row]
    
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
//    {
//        if editingStyle == UITableViewCell.EditingStyle.delete
//        {
//            list.remove(at: indexPath.row)
//            
//        }
//    }
//    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let row = indexPath.row
        print(list[row])
    }
}
