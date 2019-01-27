//
//  ViewController.swift
//  quickTip
//
//  Created by Anthony Ronca on 1/23/19.
//  Copyright © 2019 Anthony Ronca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements
    
    @IBOutlet weak var billAmountLabel: UITextField!  //  Stores user's bill amount
    
    @IBOutlet weak var tipAmountLabel: UITextField!  //  Stores tip to be calculated
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func billAmount(_ sender: Any) {
        
        // get the bill amount
        let bill = Double(billAmountLabel.text!) ?? 0.0
        
        
        
        //  ?? is error checking which changes billAmountLabel to zero if it isn't a double
        
        // calculate tip/total based on user input
        let tipPercentage = [0.10, 0.15, 0.20]
 
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex];
        let total = bill + tip
        
        // upda te amount when new input is entered
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
}


