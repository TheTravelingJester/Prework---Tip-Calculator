//
//  ViewController.swift
//  prework - Riaz Ahmed
//
//  Created by RIAZ on 1/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmnt: UITextField!
    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var totalAmnt: UILabel!
    @IBOutlet weak var tipCtrl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calTip(_ sender: Any) {
        
        //calculating tip
        
        let bill = Double(billAmnt.text!) ?? 0
        let tipPercent = [0.15,0.18,0.20]
        let tip = bill * tipPercent[tipCtrl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLable.text = String(format: "$%.2f", tip)
        totalAmnt.text = String(format: "$%.2f", total)
    }
}

