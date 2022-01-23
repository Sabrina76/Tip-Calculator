//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sabrina Chen on 1/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTotal(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multuplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amound label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multuplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amound label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

