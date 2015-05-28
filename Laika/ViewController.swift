//
//  ViewController.swift
//  Laika
//
//  Created by Rehan Mahmood on 5/28/15.
//  Copyright (c) 2015 Sysnet Managed Services, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ageInHumanYears: UITextField!
    @IBOutlet weak var ageInDogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertDogYearsButton(sender: UIButton) {
        
        let ageHumanYearString = ageInHumanYears.text
        var ageHumanYearInt = (ageHumanYearString.toInt())!
        var conversionConstant = 7
        ageHumanYearInt *= conversionConstant
        ageInDogYearsLabel.hidden = false
        ageInDogYearsLabel.text = "\(ageHumanYearInt)" + " dog years"
        ageInHumanYears.resignFirstResponder()
        
    }

}

