//
//  DataVC.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/16/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//  Thank you to Electronic Armory for his tutorial on iOS development
import HTPressableButton

import UIKit

class DataVC: UIViewController, /* include the protocol*/ColorDelegate{
    // conform to the protocol made
    func updateColor(_ color: UIColor) {
        colorView.backgroundColor = color
    }
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var colorView: UIView!
    
    var color = UIColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    // Allow the colorPickerView to unwind to the DataVC
//    @IBAction func unwindToDataVC(_ sender: UIStoryboardSegue){}
    
    // prepare the segue to sender view controller
    // This will reference the fucntion from the protocol in the sender view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest =  segue.destination as? ColorPickerViewController{
            dest.delegate = self
        }
    }

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
