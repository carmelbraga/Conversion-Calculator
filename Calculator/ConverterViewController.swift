//
//  ConverterViewController.swift
//  Calculator
//
//  Created by Carmel Braga on 4/10/19.
//  Copyright © 2019 Carmel Braga. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var converterArray: [Converter] = [Converter]()
    
    var currentNum: Double = 0
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func numButtons(_ sender: UIButton) {
        
        inputDisplay.text = String(sender.tag-1) + self.inputDisplay.text!
        currentNum = Double(sender.tag-1) + currentNum
        outputDisplay.text = doConversion(currentNum: currentNum)
        
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        
         inputDisplay.text = "" + converterArray[IndexPath].inputUnit
         currentNum = 0
         outputDisplay.text = "" + converterArray[IndexPath].inputUnit
    }
    
    @IBAction func negativeButton(_ sender: UIButton) {
        
        inputDisplay.text = "-" + self.inputDisplay.text!
        currentNum = -currentNum
        outputDisplay.text = doConversion(currentNum: currentNum)
    }
    
    @IBAction func decimalButton(_ sender: UIButton) {
        
        inputDisplay.text = self.inputDisplay.text! + "."
        outputDisplay.text = doConversion(currentNum: currentNum)
        
    }
    
    @IBAction func converterButtonClick(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: converterArray[0].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[0].outputUnit
            self.inputDisplay.text = self.converterArray[0].inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[1].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[1].outputUnit
            self.inputDisplay.text = self.converterArray[1].inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[2].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[2].outputUnit
            self.inputDisplay.text = self.converterArray[2].inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[3].label, style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[3].outputUnit
            self.inputDisplay.text = self.converterArray[3].inputUnit
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        converterArray =  [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                           Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                           Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                           Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
        
        outputDisplay.text = converterArray[0].outputUnit
        inputDisplay.text = converterArray[0].inputUnit
        
    }
    
    
    func doConversion(currentNum: Double) -> String{
    
        
        switch converterArray[IndexPath].label{
            
        case "fahrenheit to celcius":
        
            outputDisplay.text! = String((currentNum - 32) * (5/9))
            
        case "celcius to fahrenheit":
            outputDisplay.text! = String((currentNum * (9/5) + 32))

        case "miles to kilometers":
            outputDisplay.text! = String(currentNum / 0.62137)

        case "kilometers to miles":
            outputDisplay.text! = String(currentNum * 0.62137)
            
        default:
            break
        }
        
        return outputDisplay.text! + converterArray[IndexPath].outputUnit
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}
