//
//  ViewController.swift
//  Federal TAX
//
//  Created by Melville, Aidan on 2019-11-01.
//  Copyright © 2019 Melville, Aidan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Functions
    
    //Inputs
    
    @IBOutlet weak var nameOfPersonText: UITextField!
    @IBOutlet weak var totalIncomeText: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var totalTaxPercentLabel: UILabel!
    @IBOutlet weak var moneyLostLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func calculateTax(_ sender: Any) {
        // get name as string
        guard let nameOfPersonAsString = nameOfPersonText.text else { return totalTaxPercentLabel.text = "Please enter a Name" }
        // get total income as string
        guard let totalIncomeTextAsString = totalIncomeText.text else { return totalTaxPercentLabel.text = "Please enter amount" }
        //get total income as Int
        guard let totalIncome = Double(totalIncomeTextAsString) else { return totalTaxPercentLabel.text = "Please use Dollars only"}
        
        //all the numbers that we can use precalculated ie first 47630*.15
        let firstTaxBracketTotal = 7_144.0
        let secondTaxBracketTotal = 9_763.0 + 7_144.0
        let thirdTaxBracketTotal = 13_626.0 + secondTaxBracketTotal
        let fourthTaxBracketTotal =
        let fifthTaxBracketTotal =
        
        
        switch totalIncome {
        case 0...47630:
            let firstTaxBracket = totalIncome * 0.15
            nameLabel.text = nameOfPersonAsString
            totalTaxPercentLabel.text = "Your Total Tax money lost is"
            moneyLostLabel.text
            
        case 47631...95_259:
            let secondTaxBracket = (totalIncome - 47630) * 0.205
            nameLabel.text = nameOfPersonAsString
            totalTaxPercentLabel.text = "Your Total Tax money lost is"
            moneyLostLabel.text
            
        case 95_260...147_667:
            let thirdTaxBracket = Double(totalIncome - 95_259.0) * 0.26
            nameLabel.text = nameOfPersonAsString
            totalTaxPercentLabel.text = "Your Total Tax money lost is"
            moneyLostLabel.text 
            
        case 147_668...210_371:
            let fourthTaxBracket = Double(totalIncome - 147_667) * 0.29
            nameLabel.text = nameOfPersonAsString
            totalTaxPercentLabel.text = "Your Total Tax money lost is"
            
            
        default:
            
            let fifthTaxBracket = Double(totalIncome - 210_371) * 0.33
            nameLabel.text = nameOfPersonAsString
            totalTaxPercentLabel.text = "Your Total Tax money lost is"
            moneyLostLabel.text =
            
        }
        
    }
    
    
}

