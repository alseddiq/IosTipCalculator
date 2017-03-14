//
//  SettingsViewConrollerViewController.swift
//  tippy
//
//  Created by Hussain on 3/13/17.
//  Copyright © 2017 Hussain. All rights reserved.
//

import UIKit

class SettingsViewConrollerViewController: UIViewController {
    
    
    @IBOutlet weak var Label: UILabel!
    
    
    @IBOutlet weak var SegmentTip: UISegmentedControl!
    var tipVal : Int = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey:  "tipDefault")
        
        tipVal = intValue
        
        SegmentTip.selectedSegmentIndex = tipVal
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipChanged(_ sender: Any) {
        tipVal = SegmentTip.selectedSegmentIndex
    }

    @IBAction func saveState(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(tipVal, forKey: "tipDefault")
        defaults.synchronize()
        
        
    }



}
