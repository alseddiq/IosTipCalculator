//
//  ViewController.swift
//  tippy
//
//  Created by Hussain on 3/8/17.
//  Copyright © 2017 Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!

    
    var tipValue: Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey:  "tipDefault")
        
        tipValue = intValue
        
        tipControl.selectedSegmentIndex = tipValue
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18 , 0.2 , 0.25]
        
        let bill = Double(billField.text!) ?? 0.0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

