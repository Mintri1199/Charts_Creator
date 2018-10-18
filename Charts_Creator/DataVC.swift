//
//  DataVC.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/16/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//  Thank you to Electronic Armory for his tutorial on iOS development

import UIKit

class DataVC: UIViewController{
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var colorView: UIView!
    
    var color = UIColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    // Allow the colorPickerView t0 unwind to the DataVC
    @IBAction func unwindToDataVC(_ sender: UIStoryboardSegue){}


    @IBAction func saveValue(_ sender: Any) {
        // find a way to pass an object to the table view
        //var dataObject: ValueObject
        
        var value: Double = 0
        
        // Check for text and if the text is a number in the numberTextField
        if let textCheck = numberTextField.text{
            if let numberCheck = Double(textCheck){
                value = numberCheck
            }
        }else{
            return
        }

        // Check for textField's text to add it to the DataController
        if let text = textField.text{
            DataController.addData(newData: text, value: value, color: colorView.backgroundColor!)
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
