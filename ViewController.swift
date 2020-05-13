//
//  ViewController.swift
//  insulinCorrection
//
//  Created by Ricky Marly on 5/12/20.
//  Copyright © 2020 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetData: UITextField!
    @IBOutlet weak var correctionData: UITextField!
    @IBOutlet weak var currentBloodData: UITextField!
    
    @IBOutlet weak var unitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         unitLabel.text = ""
    }
    
    

    @IBAction func calculateButton(_ sender: Any){
        
        let targetLevel = Double(targetData.text!)!
        let correctionLevel = Double(correctionData.text!)!
        let currentBloodLevel = Double(currentBloodData.text!)!
        

        let correctionBolusStep1 = currentBloodLevel - targetLevel
        let correctionBolus =  (correctionBolusStep1 / correctionLevel)
        
         unitLabel.text = "Units: \(correctionBolus)"
        
    }
    
}

