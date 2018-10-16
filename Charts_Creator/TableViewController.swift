//
//  TableViewController.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/15/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var rowStepper: UIStepper!
    @IBAction func stepperTapped(_ sender: UIStepper) {
        tableView.reloadData()
    }
    // Find out how to implement inifinite label changing without a list
    var listOfValues = [1,2,3,4,5]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rows = Int(rowStepper.value)
        return rows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        // Set the label to the cell
        cell.textLabel?.text = "\(Int(listOfValues[indexPath.row])) value"
        return cell
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

}
