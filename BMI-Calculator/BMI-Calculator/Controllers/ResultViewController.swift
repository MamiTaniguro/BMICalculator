//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by mami taniguro on 5/5/21.
//

import UIKit

class ResultViewController: UIViewController {

    var BMIValue: String?
    var adviceMessage: String?
    var backgroudColor: UIColor?
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BMILabel.text = BMIValue
        adviceMessageLabel.text = adviceMessage
        view.backgroundColor = backgroudColor
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss (animated: true, completion: nil)
    }
    
}
