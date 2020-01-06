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
    
    
    var cellIdentifier : String = "cell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        table1.delegate = self
        table2.delegate = self
        table1.dataSource = self
        table2.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    // function to find how many rows to generate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1 {
            let data = dataSet()
            print("In table tableView numberofrows")
            print(data)
            let numberOfRows = data.count
            return numberOfRows
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as UITableViewCell
        let data = dataSet()
        if tableView.tag == 1 {
            cell.textLabel?.text = Array(data.keys)[indexPath.row]
            
        }
        return cell
    }
    
    // Function for Data
    func dataSet () -> [String: Array<String>] {
        
        var dataSetDict = [String: Array<String>]()
        
        dataSetDict = ["A" : ["Apple", "Ant"],
                       "B" : ["Boat", "Ball"],
                       "C" : ["Cat", "Castle"],
                       "D" : ["Dog", "Duck"],
                       "E" : ["Elephant", "Empire"]
                       
            ] as [String : Array<String>]
        
        for (key, value) in dataSetDict {
            print("Dictionary key \(key) - Dictionary value \(value)")
        }
        
        return dataSetDict
    }

  }

