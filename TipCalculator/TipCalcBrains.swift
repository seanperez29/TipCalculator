//
//  TipCalcBrains.swift
//  TipCalculator
//
//  Created by Sean Perez on 2/12/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

import Foundation

class TipCalcBrains {

    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0

    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        _billAmount = billAmount
        _tipPercent = tipPercent
    }
    
    func calculateTip() {
        _tipAmount = _billAmount * _tipPercent
        _totalAmount = _tipAmount + _billAmount
    }
    
}

