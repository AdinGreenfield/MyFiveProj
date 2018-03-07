//
//  FourthViewController.swift
//  MyFive
//
//  Created by Adin Greenfield on 3/7/18.
//  Copyright © 2018 Adin Greenfield. All rights reserved.
//

import UIKit

import SQLite

class FourthViewController: UIViewController {
    
    @IBOutlet weak var newChart: UITextField!

    var database: Connection!
    
    let id = Expression<Int>("id")
    let name = Expression<String>("name")
    
    
    @IBAction func createTable(_ sender: Any) {
        
        let name = newChart.text!
        let top5Table = Table(name)
        let createTable = top5Table.create { (t) in
            t.column(self.id, primaryKey: true)
            t.column(self.name)
        }
        
        do{
            try self.database.run(createTable)
            print("Create Table")
        }
        catch {
            print(error)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do{
//            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
//            let fileUrl = documentDirectory.appendingPathComponent("high_five.db").appendingPathExtension("sqlite3")
            let database = try Connection("/Users/adin/highfive.sqlite3")
            self.database = database
            
        }
        catch{
            print(error)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
