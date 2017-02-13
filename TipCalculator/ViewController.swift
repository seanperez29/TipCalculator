//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sean Perez on 2/12/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterBillTF: UITextField!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLbl: UILabel!
    
    var tipCalcBrains = TipCalcBrains(billAmount: 25.0, tipPercent: 0.15)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tipPercentValue()
    }
    @IBAction func billAmountChanged(_ sender: Any) {
        calculateTip()
    }
    
    @IBAction func tipPercentChanged(_ sender: Any) {
        tipPercentValue()
        calculateTip()
    }
    
    func calculateTip() {
        tipCalcBrains.tipPercent = Double(tipPercentSlider.value)
        tipCalcBrains.billAmount = ((enterBillTF.text!) as NSString).doubleValue
        tipCalcBrains.calculateTip()
        updateBillUI()
    }
    
    func updateBillUI() {
        totalAmountLabel.text = String(format: "$%0.2f", tipCalcBrains.totalAmount)
        tipAmountLbl.text = String(format: "$%0.2f", tipCalcBrains.tipAmount)
    }
    
    func tipPercentValue() {
        tipPercentLbl.text = "Tip: \(Int(tipPercentSlider.value * 100))%"
    }
    
    
}

