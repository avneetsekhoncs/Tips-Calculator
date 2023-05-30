//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Avneet Sekhon on 2023-05-28.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var splitValue: String?
    var selectTip: String?
    var chooseSplit: String?
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = splitValue
        settingsLabel.text = "Split between \(chooseSplit ?? "2") people, with \(selectTip ?? "10")% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
