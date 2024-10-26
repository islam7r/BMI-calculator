//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Islam Rzayev on 25.10.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    
    
    func calculateBMI(height: Float, weight: Float) -> String{
        let bmivalue = weight / pow(height, 2)
        return String(format: "%.1f", bmivalue)
    }
    
}
