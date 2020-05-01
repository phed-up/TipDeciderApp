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
    var cleanNumber = 4
    var percentTotal = 0
    var grandTotal = 0.0
    var tipAmount = 0.0
    var splitAmount = 1.0
    var dividedPayment = 0.0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billTotal.becomeFirstResponder()
        
    }
    
    
    @IBAction func serviceSliderChanged(_ sender: designableSlider) {
        
         serviceNumber = Int(Double(sender.value))
            
            billTotal.endEditing(true)
            
            if serviceNumber == 8 {
                sender.thumbImage = UIImage(named: "DesignerHappyEmoji")
            }
            if serviceNumber == 7 {
                sender.thumbImage = UIImage(named: "DesignerSlightlySmilingFaceEmoji")
            }
            if serviceNumber == 6 {
                sender.thumbImage = UIImage(named: "DesignerSlightlySmilingFaceEmoji")
            }
            if serviceNumber == 5 {
                sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
            }
            if serviceNumber == 4 {
                sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
            }
            if serviceNumber == 3 {
                sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
            }
            if serviceNumber == 2 {
                sender.thumbImage = UIImage(named: "DesignerSlightlySadEmoji")
            }
            if serviceNumber == 1 {
                sender.thumbImage = UIImage(named: "DesignerSlightlySadEmoji")
            }
            if serviceNumber == 0 {
                sender.thumbImage = UIImage(named: "DesignerVerySadEmoji")
            }
            print(serviceNumber)
        }
        
        
    
    @IBAction func foodSliderChanged(_ sender: designableSlider) {
        
        foodQualityNumber = Int(Double(sender.value))
        
        billTotal.endEditing(true)
        
        if foodQualityNumber == 8 {
            sender.thumbImage = UIImage(named: "DesignerHungryFaceEmoji")
        }
        if foodQualityNumber == 7 {
            sender.thumbImage = UIImage(named: "DesignerSlightlySmilingFaceEmoji")
        }
        if foodQualityNumber == 6 {
            sender.thumbImage = UIImage(named: "DesignerSlightlySmilingFaceEmoji")
        }
        if foodQualityNumber == 5 {
            sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
        }
        if foodQualityNumber == 4 {
            sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
        }
        if foodQualityNumber == 3 {
            sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
        }
        if foodQualityNumber == 2 {
            sender.thumbImage = UIImage(named: "DesignerSlightlySadEmoji")
        }
        if foodQualityNumber == 1 {
            sender.thumbImage = UIImage(named: "DesignerSlightlySadEmoji")
        }
        if foodQualityNumber == 0 {
            sender.thumbImage = UIImage(named: "DesignerPoisonedEmoji")
        }
        print(foodQualityNumber)
    }
    
    
    @IBAction func cleanSliderChanged(_ sender: designableSlider) {
        
        cleanNumber = Int(Double(sender.value))
              
              billTotal.endEditing(true)
              
              if cleanNumber == 8 {
                  sender.thumbImage = UIImage(named: "DesignerDiamondEmoji")
              }
              if cleanNumber == 7 {
                  sender.thumbImage = UIImage(named: "DesignerSlightlySmilingFaceEmoji")
              }
              if cleanNumber == 6 {
                  sender.thumbImage = UIImage(named: "DesignerSlightlySmilingFaceEmoji")
              }
              if cleanNumber == 5 {
                  sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
              }
              if cleanNumber == 4 {
                  sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
              }
              if cleanNumber == 3 {
                  sender.thumbImage = UIImage(named: "DesignerNeutralFaceEmoji")
              }
              if cleanNumber == 2 {
                  sender.thumbImage = UIImage(named: "DesignerSlightlySadEmoji")
              }
              if cleanNumber == 1 {
                  sender.thumbImage = UIImage(named: "DesignerSlightlySadEmoji")
              }
              if cleanNumber == 0 {
                  sender.thumbImage = UIImage(named: "DesignerPoopEmoji")
              }
              print(cleanNumber)
    }
    
        
    
    
   
    
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        
        splitAmount = sender.value
        
        splitAmountLabel.text = String(format: "%.0f", (splitAmount))
        
        billTotal.endEditing(true)
        
        //        print(splitAmount)
        
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
      
        
        
        if billTotal.text != "" && billTotal.text != "."{
            
            
            billTotalAmount = Double(billTotal.text!)!
            
            percentTotal = Int(Double(serviceNumber + foodQualityNumber + cleanNumber))
            
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

