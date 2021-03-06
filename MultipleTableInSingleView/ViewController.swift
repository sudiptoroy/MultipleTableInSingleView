//
//  ViewController.swift
//  MultipleTableInSingleView
//
//  Created by Sudipto Roy on 1/6/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    // Identifier for cell
    var cellIdentifier : String = "cell"
    
    // Variable to assign number of rows
    var numberOfRows : Int = 0
    
    var items = [String]()
    var key : String = "A"
    
    // Dictionary for Sample Data
    let data = ["A" : ["Apple", "Ant"],
                "B" : ["Boat", "Ball"],
                "C" : ["Cat", "Castle"],
                "D" : ["Dog", "Duck"],
                "E" : ["Elephant", "Empire"]]
    
    var keyReference : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        table1.delegate = self
        table2.delegate = self
        table1.dataSource = self
        table2.dataSource = self

    }
    
    // function to find how many rows to generate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == table1 {
            print("In table tableView numberofrows")
            print(data)
            numberOfRows = data.count
            print(numberOfRows)
            return numberOfRows
        }
        
        else if tableView == table2{
            return (data[key]?.count)!
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as UITableViewCell
        //print(items.count)
        if tableView == table1 {
            
            cell.textLabel?.text = Array(data.keys)[indexPath.row]
        }
        else if tableView == table2 {
            cell.textLabel?.text = data[key]?[indexPath.row]
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == table1 {
            print(Array(data.values)[indexPath.row])
            //items.append(contentsOf: Array(data.values)[indexPath.row])
            key = Array(data.keys)[indexPath.row]
            print("key =", key)
            table2.reloadData()
            //print(items)
        }
        
    }
  }

