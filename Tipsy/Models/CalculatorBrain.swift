//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Avneet Sekhon on 2023-05-29.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var splitBill = 0.0
    
    mutating func calculateBill(userValueInput: Double, tip: Double, splitCount: Int) {
        
        let totalBill = userValueInput + (userValueInput * tip)
        splitBill = totalBill / Double(splitCount)

    }
    
    func getSplitBillValue() -> String {
        return String(format: "%.2f", splitBill)
    }
}
