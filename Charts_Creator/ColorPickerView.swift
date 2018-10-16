//
//  ColorPickerView.swift
//  Charts_Creator
//
//  Created by Jackson Ho on 10/16/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//

import UIKit

class ColorPickerView: UIViewController{
    
    @IBOutlet weak var colorDisplay: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    var redColor: Float = 0
    var blueColor: Float = 0
    var greenColor: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func redSliderAction(_ sender: Any) {

    }

    @IBAction func blueSliderAction(_ sender: Any) {

    }

    @IBAction func greenSliderAction(_ sender: Any) {
    }
    
    func changeDisplayLabelColor(){
        colorDisplay.backgroundColor = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1)
    }
    
    func changeColors(){
        // Binding the color variables with the sliders' values
        redColor = redSlider.value
        blueColor = blueSlider.value
        greenColor = greenSlider.value
        
        changeDisplayLabelColor()
    }
    
    func changeLabelsNumber(){
        // Rounding up the color number to change the label text
        let roundedRed = String(format: "%0.0f", (redColor * 255))
        let roundedBlue = String(format: "%0.0f", (blueColor * 255))
        let roundedGreen = String(format: "%0.0f", (greenColor * 255))
        
        redLabel.text = "Red: \(roundedRed)"
        blueLabel.text = "Blue: \(roundedBlue)"
        greenLabel.text = "Green: \(roundedGreen)"
        
        
    }
}
