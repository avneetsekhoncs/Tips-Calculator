//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var count = 0
    var splitCount = 2
    var tip = 0.0
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    override func viewDidLoad() {
        // If user doesn't select a tip, 10% is default
        tip = 0.1
    }
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let titleWithoutCharacters = String(buttonTitle.dropLast())
        tip = Double(titleWithoutCharacters)! / 100
         
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        splitCount = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let uInput = Double(billTextField.text!)
        billTextField.endEditing(true)
        
        let totalBill = uInput! + (uInput! * tip)
        let splitBill = totalBill / Double(splitCount)
        print(String(format: "%.2f", splitBill))
        
    }
    
}
    
    

