//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Elco Garcia on 7/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
   mutating  func calculateBMI (height:Float, weight:Float){
      let   bmiValue = weight / (height * height)
    if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    }else if bmiValue < 24.9{
       bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }else{
        bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    }
    
      // bmi = BMI(value: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    func getBMIValue()->String{
        let bmiToDecimalPlace = String(format:"%.1f",bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
        
    }
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
