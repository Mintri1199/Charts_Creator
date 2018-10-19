//
//  SecondViewController.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/15/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//
//  Charts library by Daniel Gindi


import UIKit

import Charts

class ChartViewController: UIViewController {
    // Create the necessary outlets and attributes
    @IBOutlet weak var pieChart: PieChartView!
    
    // empty list of values
    var listOfValues = [PieChartDataEntry]()
    
    // empty list of colors
    var colors = [UIColor]()
    
    
    func appendingListOfData () -> [PieChartDataEntry]{
        
        let listOfData = DataController.dataArray
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
    
    func addingColor() {
        var index = 0
        
        for _ in listOfValues{
            colors.append(DataController.dataArray[index].2)
            index += 1
        }
    }
    
    // Contantly update the view
    override func viewWillAppear(_ animated: Bool) {
    
        listOfValues = [PieChartDataEntry]()
        colors = [UIColor]()
        
        // append the data from datacontroller into an Array of PieChartEntry values
        listOfValues = appendingListOfData()
        
        // Add labels to the values PieChartEntry list
        addingLabels()
        // Add custom colors to the values
        addingColor()
        // Show the chart to
        updateCharts()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func updateCharts(){
        
        let chartDataSet = PieChartDataSet(values: listOfValues, label: "")
        let chartData = PieChartData(dataSet: chartDataSet)
        chartDataSet.colors = colors 
        
        pieChart.data = chartData
        

        
    }
}

