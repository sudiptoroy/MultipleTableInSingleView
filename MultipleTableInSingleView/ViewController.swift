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
        var data = [String: Array<Any>]()
        // Do any additional setup after loading the view, typically from a nib.
        
        data = dataSet()
        print(data)
    }
    
    
    func dataSet () -> [String: Array<Any>] {
        
        var dataSetDict = [String: Array<Any>]()
        
        dataSetDict = ["A" : ["Apple", "Ant"],
                       "B" : ["Boat", "Ball"],
                       "C" : ["Cat", "Castle"],
                       "D" : ["Dog", "Duck"],
                       "E" : ["Elephant", "Empire"]
                       
            ] as [String : Array<Any>]
        
        for (key, value) in dataSetDict {
            print("Dictionary key \(key) - Dictionary value \(value)")
        }
        
        return dataSetDict
    }

}

