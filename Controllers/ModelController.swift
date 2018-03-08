//
//  ModelController.swift
//  MyFive
//
//  Created by Adin Greenfield on 3/7/18.
//  Copyright © 2018 Adin Greenfield. All rights reserved.
//

import Foundation

class ModelController {
    
    static var chartName = " "
    
    func getChartName() -> String! {
        return ModelController.chartName
    }
    
    func setChartName(name: String!){
        ModelController.chartName = name
    }
    
}
