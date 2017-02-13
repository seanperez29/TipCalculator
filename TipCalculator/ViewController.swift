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
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func billAmountChanged(_ sender: Any) {
    }
    
    @IBAction func tipPercentChanged(_ sender: Any) {
    }
    
    
}

