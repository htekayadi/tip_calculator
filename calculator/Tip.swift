//
//  Tip.swift
//  calculator
//
//  Created by Popsical on 23/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import Foundation

class Tip {
    var tipAmount: Float = 0
    var amountBeforeTax: Float = 0
    var tipPercentage: Float = 0
    var totalAmount: Float = 0
    
    init(amountBeforeTax: Float, tipPercentage: Float) {
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip() {
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
    }
}
