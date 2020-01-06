//
//  ViewController.swift
//  MultipleTableInSingleView
//
//  Created by Sudipto Roy on 1/6/20.
//  Copyright © 2020 Code-X Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var data = [String: Array<String>]()
        // Do any additional setup after loading the view, typically from a nib.
        
        data = dataSet()
        print(data)
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

