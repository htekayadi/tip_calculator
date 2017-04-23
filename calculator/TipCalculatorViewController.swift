//
//  TipCalculatorViewController.swift
//  calculator
//
//  Created by Popsical on 23/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    var tip = Tip(amountBeforeTax: 25.00, tipPercentage: 0.2)
    override func viewDidLoad() {
        super.viewDidLoad()

        amountTextField.text = String(format: "%0.2f", arguments: [tip.amountBeforeTax])
        tipPercentageLabel.text = String(format: "Tip %d%%:", arguments: [Int(tip.tipPercentage * 100)])
    }

    func calculateTip() {
        tip.tipPercentage = Float(tipPercentageSlider.value)
        tip.amountBeforeTax = ((amountTextField.text)! as NSString).floatValue
        tip.calculateTip()
        updateUI()
    }
    
    func updateUI() {
        resultLabel.text = String(format: "Total: $%0.2f Tip: $%0.2f", arguments: [tip.totalAmount, tip.tipAmount])
    }

    @IBAction func amountBeforeTaxTextFieldChanged(_ sender: Any) {
        calculateTip()
    }
    
    @IBAction func tipPercentagesSliderValueChanged(_ sender: Any) {
        tipPercentageLabel.text! = String(format: "Tip: %02d%%", arguments: [Int(tipPercentageSlider.value * 100)])
        calculateTip()
    }
}
