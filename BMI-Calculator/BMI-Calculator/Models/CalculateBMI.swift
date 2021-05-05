//
//  CalculateBMI.swift
//  BMI-Calculator
//
//  Created by mami taniguro on 5/5/21.
//

import UIKit

struct CalculateBMI {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let BMIValue = String(format: "%.1f", bmi?.BMIValue ?? 0.0)
        return BMIValue
    }
    
    func getAdviceMessage() -> String {
        return bmi?.adviceMessage ?? "No advice"
    }
    
    func getBackgroundColor() -> UIColor {
        return bmi?.backgroundColor ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let heightInMeter = height/100
        let value = weight / (heightInMeter * heightInMeter)
       
        if (value < 18.5) {
            bmi = BMI(BMIValue: value, adviceMessage: "Eat more pizzas!", backgroundColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if (value < 24.9) {
            bmi = BMI(BMIValue: value, adviceMessage: "Fit as a fiddle!", backgroundColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(BMIValue: value, adviceMessage: "Let's do some workouts!", backgroundColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
}
