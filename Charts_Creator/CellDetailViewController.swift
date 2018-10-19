//
//  CellDetailViewController.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/18/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//

import UIKit

class CellDetailViewController: UIViewController {

    @IBOutlet weak var cellNameTextField: UITextField!
    @IBOutlet weak var cellValueTextField: UITextField!
    
    @IBOutlet weak var cellColorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellNameTextField.text = DataController.dataArray[row].0
        cellValueTextField.text = String(DataController.dataArray[row].1)
        cellColorView.backgroundColor = DataController.dataArray[row].2
        
    }
    
    @IBAction func editColorButtonTapped(_ sender: Any) {
    }
    
    @IBAction func saveEditButtonTapped(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let _ = segue.destination as? DataTableViewController{
            DataController.dataArray[row].0 = cellNameTextField.text!
            DataController.dataArray[row].1 = Double(cellValueTextField.text!)!
            DataController.dataArray[row].2 = cellColorView.backgroundColor!
        }
    }
    @IBAction func unwindToEditCell(_ unwindSegue: UIStoryboardSegue) {}
}
