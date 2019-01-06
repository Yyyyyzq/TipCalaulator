//
//  ViewController.swift
//  TipCalculator
//
//  Created by apple on 1/5/19.
//  Copyright © 2019 utexas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTouch(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipsLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var chooseTipsSegements: UISegmentedControl!
    
    @IBOutlet weak var customTipField: UITextField!
    
    
    @IBAction func calculateTips(_ sender: Any) {
        
        var customTips: Double {
            get {
                return
                    (Double(customTipField.text!) ?? 0) / 100
            }
        }
        
        var tipSelection = [0.15, 0.2, 0.25, customTips]
        
        let bill = Double(billField.text!) ?? 0
        let tips = bill * tipSelection[chooseTipsSegements.selectedSegmentIndex]
        let total = bill + tips
        
        tipsLabel.text = String(format: "$%.2f", tips)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
    
    
    
}

