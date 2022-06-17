//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var percentage: Double = 0.0
    var finalResult: String?
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }

    @IBAction func tipChange(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        
        let buttonPressed = sender.title(for: .normal)!
        
        if buttonPressed == "0%" {
            zeroButton.isSelected = true
            percentage = 0.0
        } else if buttonPressed == "10%" {
            tenButton.isSelected = true
            percentage = 0.1
        } else {
            twentyButton.isSelected = true
            percentage = 0.2
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let totalBill = Double(billTextField.text!) ?? 0.0
        let totalPeople = Double(splitNumberLabel.text!) ?? 2.0
        let result = ((totalBill * percentage) + totalBill) / totalPeople
        finalResult = String(format: "%.2f", result)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultsViewController
            destination.people = splitNumberLabel.text!
            destination.percent = String(percentage * 100)
            destination.total = finalResult
        }
    }
    
}

