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
    var firstValue = PieChartDataEntry(value: 10)
    var secondValue = PieChartDataEntry(value: 34)
    
    var listOfValues = [PieChartDataEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.chartDescription?.text = "test"
   
        firstValue.label = "First"
        
        secondValue.label = "Second"
        
        listOfValues = [firstValue, secondValue]
        
        updateCharts()
    }
    

    func updateCharts(){
        let chartDataSet = PieChartDataSet(values: listOfValues, label: "")
        let chartData = PieChartData(dataSet: chartDataSet)
        
        let colors = [UIColor.red, UIColor.cyan]
        chartDataSet.colors = colors as! [NSUIColor]
        
        pieChart.data = chartData
        
        
        
    }
}

