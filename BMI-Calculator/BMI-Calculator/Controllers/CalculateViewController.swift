//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by mami taniguro on 5/4/21.
//

import UIKit

class CalculateViewController: UIViewController {

    var BMICalculator = CalculateBMI()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let userHeight = String(format: "%.0f", sender.value)
        heightLabel.text = "\(userHeight)cm"
    }
    
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) {
        let userWeight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(userWeight)kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let userHeight = heightSlider.value
        let userWeight = weightSlider.value
        
        BMICalculator.calculateBMI(height: userHeight, weight: userWeight)
        performSegue(withIdentifier: "showResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showResult") {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = BMICalculator.getBMIValue()
            destinationVC.adviceMessage = BMICalculator.getAdviceMessage()
            destinationVC.backgroudColor = BMICalculator.getBackgroundColor()
        }
    }
}

