//
//  AppDelegate.swift
//  BMI
//
//  Created by Sneh Tyagi on 10/07/23.
//

import UIKit


struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue () -> String {
       
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
     
        }
    
    func getAdvice() -> String {
      return  bmi?.advise ?? "No advice"
    }
    
    func getColor() -> UIColor {
     
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height:Float,weight:Float) {
        let bmiValue = weight / (height * height )
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advise: "Eat More Pies", color: UIColor.blue )
        } else if  bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advise: "Fit as a fiddle", color: UIColor.green)
        } else {
            bmi = BMI (value: bmiValue, advise: "Eat less pies", color: UIColor.red)
            
        }
    }
    
    
}






