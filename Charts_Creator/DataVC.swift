//
//  DataVC.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/16/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//  Thank you to Electronic Armory for his tutorial on iOS development

import UIKit

class DataVC: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveValue(_ sender: Any) {
        var dataObject: ValueObject
        
        // Check for textField's text to add it to the DataController
        if let text = textField.text{
            DataController.addData(newData: text)
        }else{
            return
        }
        dismiss(animated: true, completion: nil)
    }
}

// The Data object that the graph will use
class ValueObject{
    var value: Double
    var name: String
    var color: UIColor
    
    init(value: Double, name: String, Color: UIColor) {
        self.value = value
        self.name = name
        self.color = Color
    }
    
}
