//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Islam Rzayev on 25.10.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain{
    
    
    
    var bmiValue: BMI?
    
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmiValue!.value)
    }
    func getAdvice() -> String{
        return bmiValue?.advice ?? "error"
    }
    func getColor() -> UIColor{
        return bmiValue?.color ?? UIColor.red
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmi = weight / pow(height, 2)
        
        
        if bmi < 18.5{
            bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            
        }else if bmi > 18.5 && bmi < 24.9{
            bmiValue = BMI(value: bmi, advice: "Fit as fiddle!", color: #colorLiteral(red: 0.587202383, green: 0.9109002976, blue: 0.3383290816, alpha: 1))
        }else{
            bmiValue = BMI(value: bmi, advice: "Eat less pies!", color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        }
    }
    
    
    
}


