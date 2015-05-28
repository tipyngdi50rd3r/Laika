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
        
        let stringFromTextField = ageInHumanYears.text

        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        var realDogYears:Double
        if optionalDoubleFromTextField > 2
        {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else
        {
            realDogYears = optionalDoubleFromTextField * 10.5
        }
        
        ageInDogYearsLabel.hidden = false

        ageInDogYearsLabel.text = "\(realDogYears)" + " Real Human Years"
        ageInHumanYears.resignFirstResponder()
        
        
    }

}

