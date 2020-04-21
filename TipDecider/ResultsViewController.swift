//
//  ResultsViewController.swift
//  TipDecider
//
//  Created by skwong on 4/18/20.
//  Copyright © 2020 skwong. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var eachPersonPaysLabel: UILabel!
    @IBOutlet weak var eachPersonPayAmount: UILabel!
    
    @IBOutlet weak var totalBillLabel: UILabel!
    @IBOutlet weak var totalBillAmount: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPercentAmount: UILabel!
    
    var eachAmount: String?
    var billAmount: String?
    var tipAmount: String?
    
    var eachPeraonPayLabelText: String?
    var totalBillLabelText: String?
    var tipAmountLabelText: String?
    var tipPercentAmountText: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eachPersonPayAmount.text = eachAmount
        totalBillAmount.text = billAmount
        
        eachPersonPaysLabel.text = eachPeraonPayLabelText
        totalBillLabel.text = totalBillLabelText
        tipAmountLabel.text = tipAmountLabelText
        tipPercentAmount.text = tipPercentAmountText
        
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
}
