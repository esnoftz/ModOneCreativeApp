//
//  ViewController.swift
//  ModOneCreativeApp
//
//  Created by EVANGELINE NOFTZ on 8/30/24.
//

import UIKit

class ViewController: UIViewController {

    var totalCandies = 100
    
    @IBOutlet weak var takenOutTextField: UITextField!
    
    @IBOutlet weak var enteredTextField: UITextField!
    
    @IBOutlet weak var totalCandiesLabel: UILabel!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // hi
    }

    
    @IBAction func submitTakenOutAction(_ sender: UIButton) {
        errorLabel.text = ""
        var amountTaken = takenOutTextField.text!
        
        if let num = Int(amountTaken) {
            var numAmountTaken = Int(amountTaken)!
            if(totalCandies - numAmountTaken == 0) {
                totalCandies -= numAmountTaken
                totalCandiesLabel.text = "Current Candies: 0"
                errorLabel.text = "Out of candy!"
            } else if(totalCandies - numAmountTaken < 0) {
                errorLabel.text = "Not enough candy!"
            } else {
                totalCandies -= numAmountTaken
                totalCandiesLabel.text = "Current Candies: " + String(totalCandies)
            }
            takenOutTextField.text = ""
        } else {
            errorLabel.text = "Invalid input"
        }
    
        takenOutTextField.text = ""

    }
    
    
    
    @IBAction func submitPutInAction(_ sender: UIButton) {
        var amountPut = enteredTextField.text!
        if let num2 = Int(amountPut) {
            var numAmountPut = Int(amountPut)!
            totalCandies = totalCandies + numAmountPut
            totalCandiesLabel.text = "Current Candies: " + String(totalCandies)
            enteredTextField.text = ""
        } else {
            totalCandiesLabel.text = "Invalid input"
            enteredTextField.text = ""
        }
        
        
    }
    
    
    
    @IBAction func timeAction(_ sender: UIDatePicker) {
        
        totalCandies = 100
        totalCandiesLabel.text = "Current Candies: 100"
        errorLabel.text = "It's a new day! Candy has been refilled!"
    }
    

}

