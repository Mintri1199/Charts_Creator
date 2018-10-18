//
//  DataController.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/16/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//

import UIKit

class DataController: NSObject {
    // Create one instance of dataArray throughout DataController Class
    static var dataArray = [(String, Double, UIColor)]()
    
    class func addData (newData: String, value: Double, color: UIColor){
        DataController.dataArray.append((newData,value,color))
    }
    
    class func removeData(atIndex: Int){
        DataController.dataArray.remove(at: atIndex)
    }
}
