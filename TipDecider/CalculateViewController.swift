//
//  ViewController.swift
//  TipDecider
//
//  Created by skwong on 4/18/20.
//  Copyright © 2020 skwong. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var enterBillTotalLabel: UILabel!
    @IBOutlet weak var billTotal: UITextField!
    @IBOutlet weak var splitAmountLabel: UILabel!
    
    
    var billTotalAmount = 0.0
    var serviceNumber = 4
    var foodQualityNumber = 4
    var ambienceNumber = 4
    var percentTotal = 0
    var grandTotal = 0.0
    var tipAmount = 0.0
    var splitAmount = 1.0
    var dividedPayment = 0.0
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func serviceSliderChanged(_ sender: UISlider) {
        
        serviceNumber = Int(Double(sender.value))
        
        billTotal.endEditing(true)
        
        
    }
    
    
    @IBAction func foodQualitySliderChanged(_ sender: UISlider) {
        
        foodQualityNumber = Int(Double(sender.value))
        
        billTotal.endEditing(true)
    }
    
    @IBAction func ambienceSliderChanged(_ sender: UISlider) {
        
        ambienceNumber = Int(Double(sender.value))
        
        billTotal.endEditing(true)
    }
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        
        splitAmount = sender.value
        
        splitAmountLabel.text = String(format: "%.0f", (splitAmount))
        
        billTotal.endEditing(true)
        
        //        print(splitAmount)
        
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
      
        
        
        if billTotal.text != "" {
            
            
            billTotalAmount = Double(billTotal.text!)!
            
            percentTotal = Int(Double(serviceNumber + foodQualityNumber + ambienceNumber))
            
            tipAmount = (Double(percentTotal) * 0.01) * billTotalAmount
            
            grandTotal = tipAmount + billTotalAmount
            
            dividedPayment = grandTotal / splitAmount
            
              
            
            performSegue(withIdentifier: "goToResults", sender: nil)
            
        }
        
        
        
//                print(serviceNumber)
//                print(foodQualityNumber)
//                print(ambienceNumber)
//                print(percentTotal)
//                print(tipAmount)
//                print(grandTotal)
//                print(dividedPayment)
//                print(splitAmount)
//                print(percentTotal)
        
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        billTotal.text = ""
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! ResultsViewController
        
        destinationVC.eachPeraonPayLabelText = "Total amount per person"
        
        destinationVC.eachAmount = "$\(String(format: "%.2f", dividedPayment))"
        
        destinationVC.totalBillLabelText = "Total bill amount"
        
        destinationVC.billAmount = "$\(String(format: "%.2f", grandTotal))"
        
        
        destinationVC.tipAmountLabelText = "Tip at \(String(percentTotal))%"
        
        destinationVC.tipPercentAmountText = "$\(String(format: "%.2f", tipAmount))"
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           self.view.endEditing(true)
       }
    
    
    

    
    
}

