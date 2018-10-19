//
//  DataViewController.swift
//  
//
//  Created by Jackson Ho on 10/16/18.
//

import UIKit

var row = 0

class DataTableViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tableView.reloadData()
        print(DataController.dataArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension DataTableViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataController.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "valueCell", for: indexPath)
        
        cell.textLabel?.text = DataController.dataArray[indexPath.row].0
        cell.detailTextLabel?.text = String(DataController.dataArray[indexPath.row].1)
        cell.backgroundColor = DataController.dataArray[indexPath.row].2
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        row = indexPath.row
    }
    
    
    // Allow deleting items from the listView
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            DataController.removeData(atIndex: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func unwindToDataTableView(_ unwindSegue: UIStoryboardSegue) { }
    
}
