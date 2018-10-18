//
//  SecondViewController.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/15/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//

import UIKit

import Charts

class ChartViewController: UIViewController {
    // Create the necessary outlets
    @IBOutlet weak var pieChart: PieChartView!
    
    // set the global variables for data
    // var firstValue = PieChartDataEntry(value: 10)
    // var secondValue = PieChartDataEntry(value: 34)
    
    // empty list of values
    var listOfValues = [PieChartDataEntry]()
    
    // empty list of colors
    var colors = [UIColor]()
    
    func appendingListOfData () -> [PieChartDataEntry]{
        var listOfData = DataController.dataArray
        var getterList = [PieChartDataEntry]()
        
        for object in listOfData{

            getterList.append(PieChartDataEntry(value: object.1))
        }
        return getterList
    }
    
    func addingLabels() {
        var index = 0
        
        for entry in listOfValues{
            entry.label = DataController.dataArray[index].0
            index += 1
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        // append the data from datacontroller into an Array of PieChartEntry values
        listOfValues = appendingListOfData()
        print("Count: \(listOfValues.count)")
        
        
        print(listOfValues)
        // Add labels to the values PieChartEntry list
        addingLabels()
        print(listOfValues)
        updateCharts()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addingColor() {
        var index = 0
        
        for _ in listOfValues{
            colors.append(DataController.dataArray[index].2)
            index += 1
        }
    }

    func updateCharts(){
        let chartDataSet = PieChartDataSet(values: listOfValues, label: "")
        let chartData = PieChartData(dataSet: chartDataSet)
        let colorList = [UIColor.red, UIColor.cyan]
        chartDataSet.colors = colorList as! [NSUIColor]//colors as [NSUIColor]
        
        pieChart.data = chartData
        
        
        
    }
}

