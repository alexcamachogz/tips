//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Alex Camacho on 16/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var total: String?
    var percent: String?
    var people: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = total
        settingsLabel.text = "Split between \(people ?? "2"), with \(percent ?? "0%") tip."
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
