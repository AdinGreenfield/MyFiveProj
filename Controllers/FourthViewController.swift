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
    
    var modelController = ModelController()
    
    let userName = Expression<String>("Username")
    let chartName = Expression<String>("Chartname")
    let itemPlace = Expression<String>("ItemPlace")
    let itemName = Expression<String>("ItemName")
    var chart: String!

    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var third: UITextField!
    @IBOutlet weak var fourth: UITextField!
    @IBOutlet weak var fifth: UITextField!
    
    
    @IBAction func getChartName(_ sender: Any) {
        
        let name = newChart!.text!
        
        print(name)
        self.chart = name
        ModelController.chartName = name
        print(ModelController.chartName)
    }
    
    @IBAction func insertNewChart(_ sender: Any) {
        
        print(ModelController.chartName)
        
        let someInts = [first, second, third, fourth, fifth]
        
        let somePlaces = ["first", "second", "third", "fourth", "fifth"]
        
        for index in 0...4 {
            print(someInts[index]!.text!)
            print(somePlaces[index])
           
            let place = somePlaces[index]
            let item = someInts[index]!.text!
            
            let chartsTable = Table("charts")
            let insertChart = chartsTable.insert(self.userName <- "greenfia", self.chartName <- ModelController.chartName, self.itemPlace <- place, self.itemName <- item)
            
            do{
                try self.database.run(insertChart)
                print("Inserted Chart")
            }
            catch {
                print(error)
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(ModelController.chartName)
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
