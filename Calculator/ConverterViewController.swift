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
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
