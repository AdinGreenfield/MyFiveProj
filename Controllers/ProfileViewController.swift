//
//  FourthViewController.swift
//  MyFive
//
//  Created by Adin Greenfield on 3/5/18.
//  Copyright © 2018 Adin Greenfield. All rights reserved.
//

import UIKit

//import SQLite

class FourthViewController: UIViewController {
    
    
//    @IBOutlet weak var nameOfChart: UITextField!
//
//    @IBOutlet weak var first: UITextField!
//    @IBOutlet weak var second: UITextField!
//    @IBOutlet weak var third: UITextField!
//    @IBOutlet weak var fourth: UITextField!
//    @IBOutlet weak var fifth: UITextField!
    
//    var database: Connection?
    
//    let top5Table = Table("top5")
//    let firstColumn = Expression<String>("First")
//    let secondColumn = Expression<String>("Second")
//    let thirdColumn = Expression<String>("Third")
//    let fourthColumn = Expression<String>("Fourth")
//    let fifthColumn = Expression<String>("Fifth")
    
    
//    @IBAction func submit(_ sender: Any) {
//
//        let createTable = self.top5Table.create { (t) in
//            t.column(self.firstColumn, primaryKey: true)
//            t.column(self.secondColumn, primaryKey: true)
//            t.column(self.thirdColumn, primaryKey: true)
//            t.column(self.fourthColumn, primaryKey: true)
//            t.column(self.fifthColumn, primaryKey: true)
//        }
//
//        do{
//            try self.database.run(createTable)
//            print("Create Table")
//        }
//        catch {
//            print(error)
//        }
//
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        do{
//            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
//            let fileUrl = documentDirectory.appendingPathComponent("top5").appendingPathExtension("sqlite3")
//            let database = try Connection(fileUrl.path)
//            self.database = database
//
//        }
//        catch{
//            print(error)
//        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
