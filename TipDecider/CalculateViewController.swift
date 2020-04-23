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
    
    //Service Emojis
    @IBOutlet weak var verySadEmoji: UIImageView!
    @IBOutlet weak var slightlySadEmoji: UIImageView!
    @IBOutlet weak var neutralFaceEmoji: UIImageView!
    @IBOutlet weak var slightlySmilyFaceEmoji: UIImageView!
    @IBOutlet weak var happySmilyFaceEmoji: UIImageView!
    
    //Food Emojis
    @IBOutlet weak var FoodVerySadEmoji: UIImageView!
    @IBOutlet weak var FoodSlightySadEmoji: UIImageView!
    @IBOutlet weak var FoodNeutralFaceEmoji: UIImageView!
    @IBOutlet weak var FoodSlightlySmilyFaceEmoji: UIImageView!
    @IBOutlet weak var FoodHappySmilyFaceEmoji: UIImageView!
    
    //Clean Emojis
    @IBOutlet weak var CleanVerySadEmoji: UIImageView!
    @IBOutlet weak var CleanSlightySadEmoji: UIImageView!
    @IBOutlet weak var CleanNeutralFaceEmoji: UIImageView!
    @IBOutlet weak var CleanSlightlySmilyFaceEmoji: UIImageView!
    @IBOutlet weak var CleanHappySmilyFaceEmoji: UIImageView!
    
    
    
    
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
        
        verySadEmoji.alpha = 0.0
        slightlySadEmoji.alpha = 0.0
        neutralFaceEmoji.alpha = 0.5
        slightlySmilyFaceEmoji.alpha = 0.0
        happySmilyFaceEmoji.alpha = 0.0
        
        FoodVerySadEmoji.alpha = 0.0
        FoodSlightySadEmoji.alpha = 0.0
        FoodNeutralFaceEmoji.alpha = 0.5
        FoodSlightlySmilyFaceEmoji.alpha = 0.0
        FoodHappySmilyFaceEmoji.alpha = 0.0
        
        CleanVerySadEmoji.alpha = 0.0
        CleanSlightySadEmoji.alpha = 0.0
        CleanNeutralFaceEmoji.alpha = 0.5
        CleanSlightlySmilyFaceEmoji.alpha = 0.0
        CleanHappySmilyFaceEmoji.alpha = 0.0
        
        
    }
    
    @IBAction func serviceSliderChanged(_ sender: UISlider) {
        
        serviceNumber = Int(Double(sender.value))
        
        billTotal.endEditing(true)
        
        
        if serviceNumber == 0 {
            verySadEmoji.alpha = 1.0
            slightlySadEmoji.alpha = 0.0
            neutralFaceEmoji.alpha = 0.0
            slightlySmilyFaceEmoji.alpha = 0.0
            happySmilyFaceEmoji.alpha = 0.0
            
        }
        
        if serviceNumber == 1 {
            verySadEmoji.alpha = 0.5
            slightlySadEmoji.alpha = 0.5
            neutralFaceEmoji.alpha = 0.0
            slightlySmilyFaceEmoji.alpha = 0.0
            happySmilyFaceEmoji.alpha = 0.0
        }
        
        if serviceNumber == 2 {
            verySadEmoji.alpha = 0.0
            slightlySadEmoji.alpha = 1
            neutralFaceEmoji.alpha = 0.0
            slightlySmilyFaceEmoji.alpha = 0.0
            happySmilyFaceEmoji.alpha = 0.0
        }
        
        if serviceNumber == 3 {
            verySadEmoji.alpha = 0.0
            slightlySadEmoji.alpha = 0.5
            neutralFaceEmoji.alpha = 0.5
            slightlySmilyFaceEmoji.alpha = 0.0
            happySmilyFaceEmoji.alpha = 0.0
        }
        
        if serviceNumber == 4 {
            verySadEmoji.alpha = 0.0
            slightlySadEmoji.alpha = 0.0
            neutralFaceEmoji.alpha = 1.0
            slightlySmilyFaceEmoji.alpha = 0.0
            happySmilyFaceEmoji.alpha = 0.0
        }
        
        if serviceNumber == 5 {
            verySadEmoji.alpha = 0.0
            slightlySadEmoji.alpha = 0.0
            neutralFaceEmoji.alpha = 0.5
            slightlySmilyFaceEmoji.alpha = 0.5
            happySmilyFaceEmoji.alpha = 0.0
        }
        
        if serviceNumber == 6 {
            verySadEmoji.alpha = 0.0
            slightlySadEmoji.alpha = 0.0
            neutralFaceEmoji.alpha = 0.0
            slightlySmilyFaceEmoji.alpha = 1.0
            happySmilyFaceEmoji.alpha = 0.0
        }
        
        if serviceNumber == 7 {
            verySadEmoji.alpha = 0.0
            slightlySadEmoji.alpha = 0.0
            neutralFaceEmoji.alpha = 0.0
            slightlySmilyFaceEmoji.alpha = 0.5
            happySmilyFaceEmoji.alpha = 0.5
        }
        
        if serviceNumber == 8 {
            verySadEmoji.alpha = 0.0
            slightlySadEmoji.alpha = 0.0
            neutralFaceEmoji.alpha = 0.0
            slightlySmilyFaceEmoji.alpha = 0.0
            happySmilyFaceEmoji.alpha = 1
        }
        
       
        
        
    }
    
    
    @IBAction func foodQualitySliderChanged(_ sender: UISlider) {
        
        foodQualityNumber = Int(Double(sender.value))
        
        billTotal.endEditing(true)
        
        if foodQualityNumber == 0 {
            FoodVerySadEmoji.alpha = 1.0
            FoodSlightySadEmoji.alpha = 0.0
            FoodNeutralFaceEmoji.alpha = 0.0
            FoodSlightlySmilyFaceEmoji.alpha = 0.0
            FoodHappySmilyFaceEmoji.alpha = 0.0
            
        }
        
        if foodQualityNumber == 1 {
            FoodVerySadEmoji.alpha = 0.5
            FoodSlightySadEmoji.alpha = 0.5
            FoodNeutralFaceEmoji.alpha = 0.0
            FoodSlightlySmilyFaceEmoji.alpha = 0.0
            FoodHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if foodQualityNumber == 2 {
            FoodVerySadEmoji.alpha = 0.0
            FoodSlightySadEmoji.alpha = 1
            FoodNeutralFaceEmoji.alpha = 0.0
            FoodSlightlySmilyFaceEmoji.alpha = 0.0
            FoodHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if foodQualityNumber == 3 {
            FoodVerySadEmoji.alpha = 0.0
            FoodSlightySadEmoji.alpha = 0.5
            FoodNeutralFaceEmoji.alpha = 0.5
            FoodSlightlySmilyFaceEmoji.alpha = 0.0
            FoodHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if foodQualityNumber == 4 {
            FoodVerySadEmoji.alpha = 0.0
            FoodSlightySadEmoji.alpha = 0.0
            FoodNeutralFaceEmoji.alpha = 1.0
            FoodSlightlySmilyFaceEmoji.alpha = 0.0
            FoodHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if foodQualityNumber == 5 {
            FoodVerySadEmoji.alpha = 0.0
            FoodSlightySadEmoji.alpha = 0.0
            FoodNeutralFaceEmoji.alpha = 0.5
            FoodSlightlySmilyFaceEmoji.alpha = 0.5
            FoodHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if foodQualityNumber == 6 {
            FoodVerySadEmoji.alpha = 0.0
            FoodSlightySadEmoji.alpha = 0.0
            FoodNeutralFaceEmoji.alpha = 0.0
            FoodSlightlySmilyFaceEmoji.alpha = 1.0
            FoodHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if foodQualityNumber == 7 {
            FoodVerySadEmoji.alpha = 0.0
            FoodSlightySadEmoji.alpha = 0.0
            FoodNeutralFaceEmoji.alpha = 0.0
            FoodSlightlySmilyFaceEmoji.alpha = 0.5
            FoodHappySmilyFaceEmoji.alpha = 0.5
        }
        
        if foodQualityNumber == 8 {
            FoodVerySadEmoji.alpha = 0.0
            FoodSlightySadEmoji.alpha = 0.0
            FoodNeutralFaceEmoji.alpha = 0.0
            FoodSlightlySmilyFaceEmoji.alpha = 0.0
            FoodHappySmilyFaceEmoji.alpha = 1
        }
    }
    
    @IBAction func ambienceSliderChanged(_ sender: UISlider) {
        
        ambienceNumber = Int(Double(sender.value))
        
        billTotal.endEditing(true)
        
        if ambienceNumber == 0 {
            CleanVerySadEmoji.alpha = 1.0
            CleanSlightySadEmoji.alpha = 0.0
            CleanNeutralFaceEmoji.alpha = 0.0
            CleanSlightlySmilyFaceEmoji.alpha = 0.0
            CleanHappySmilyFaceEmoji.alpha = 0.0
            
        }
        
        if ambienceNumber == 1 {
            CleanVerySadEmoji.alpha = 0.5
            CleanSlightySadEmoji.alpha = 0.5
            CleanNeutralFaceEmoji.alpha = 0.0
            CleanSlightlySmilyFaceEmoji.alpha = 0.0
            CleanHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if ambienceNumber == 2 {
            CleanVerySadEmoji.alpha = 0.0
            CleanSlightySadEmoji.alpha = 1
            CleanNeutralFaceEmoji.alpha = 0.0
            CleanSlightlySmilyFaceEmoji.alpha = 0.0
            CleanHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if ambienceNumber == 3 {
            CleanVerySadEmoji.alpha = 0.0
            CleanSlightySadEmoji.alpha = 0.5
            CleanNeutralFaceEmoji.alpha = 0.5
            CleanSlightlySmilyFaceEmoji.alpha = 0.0
            CleanHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if ambienceNumber == 4 {
            CleanVerySadEmoji.alpha = 0.0
            CleanSlightySadEmoji.alpha = 0.0
            CleanNeutralFaceEmoji.alpha = 1.0
            CleanSlightlySmilyFaceEmoji.alpha = 0.0
            CleanHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if ambienceNumber == 5 {
            CleanVerySadEmoji.alpha = 0.0
            CleanSlightySadEmoji.alpha = 0.0
            CleanNeutralFaceEmoji.alpha = 0.5
            CleanSlightlySmilyFaceEmoji.alpha = 0.5
            CleanHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if ambienceNumber == 6 {
            CleanVerySadEmoji.alpha = 0.0
            CleanSlightySadEmoji.alpha = 0.0
            CleanNeutralFaceEmoji.alpha = 0.0
            CleanSlightlySmilyFaceEmoji.alpha = 1.0
            CleanHappySmilyFaceEmoji.alpha = 0.0
        }
        
        if ambienceNumber == 7 {
            CleanVerySadEmoji.alpha = 0.0
            CleanSlightySadEmoji.alpha = 0.0
            CleanNeutralFaceEmoji.alpha = 0.0
            CleanSlightlySmilyFaceEmoji.alpha = 0.5
            CleanHappySmilyFaceEmoji.alpha = 0.5
        }
        
        if ambienceNumber == 8 {
            CleanVerySadEmoji.alpha = 0.0
            CleanSlightySadEmoji.alpha = 0.0
            CleanNeutralFaceEmoji.alpha = 0.0
            CleanSlightlySmilyFaceEmoji.alpha = 0.0
            CleanHappySmilyFaceEmoji.alpha = 1
        }
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

