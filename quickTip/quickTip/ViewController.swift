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
    
    @IBOutlet weak var totalLabel: UITextField! // stores subtotal with tip
    
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
        

        
        let tip = bill * 0.1
        let total = bill + tip
        
        // update amount when new input is entered
        
        tipAmountLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
    }
    
    
}


