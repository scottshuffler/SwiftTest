//
//  ViewController.swift
//  helloWorld
//
//  Created by Owner on 3/19/15.
//  Copyright (c) 2015 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tText: UITextField!
    @IBOutlet var lText: UITextField!
    @IBOutlet var aText: UITextField!
    @IBOutlet var sText: UITextField!
    @IBOutlet var wText: UITextField!
    @IBOutlet var hText: UITextField!
    @IBOutlet var cText: UITextField!
    @IBOutlet var bfText: UITextField!
    @IBOutlet weak var slider: UISlider!
    var bodyFat : Int!
    var height : Int!
    var newweight : Double!
    var oldWeight : Int!
    var tempWeight : Double!
    var tempCalc : Double!
    var tempDouble : Double!
    var final : String!
    var wasSlided : Bool = true
    var bmr : Double!
    var age : Int!
    var slideVal : Int = 0
    var bmi : Double!

    @IBOutlet weak var bmrLab: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var toggle: UISwitch!
    @IBAction func valueChange(sender: UISlider) {
        var currentValue = Int(sender.value)
        slideVal = Int(sender.value)
        if (slideVal == 0)
        {
            slideLabel.text = "Sedentary"
        }
        else if (slideVal == 1)
        {
            slideLabel.text = "Lightly Active"
        }
        else if (slideVal == 2)
        {
            slideLabel.text = "Moderately Active"
        }
        else if (slideVal == 3)
        {
            slideLabel.text = "Very Active"
        }
        else
        {
            slideLabel.text = "Heavily Active"
        }
    }
    
    @IBAction func sliderAction(sender: UISwitch) {
        
        wasSlided = !wasSlided
        if (wasSlided)
        {
            lText.text = "Male"
        }
        else
        {
            lText.text = "Female"
        }
    }
    @IBOutlet weak var slideLabel: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        println("You clicked the button")
        height = hText.text.toInt()
        oldWeight = wText.text.toInt()
        age = aText.text.toInt()
        if (wasSlided)
        {
            bmr = 66+(6.23 * Double(oldWeight))+(12.7 * Double(height))-(6.8 * Double(age))
        }
        else
        {
            
            bmr = 655 + (4.35 * Double(oldWeight)) + (4.7 * Double(height)) - (4.7 * Double(age))
        }
        if (slideVal == 0)
        {
            bmi = bmr * 1.2
        }
        else if (slideVal == 0)
        {
            bmi = bmr * 1.375
        }
        else if (slideVal == 0)
        {
            bmi = bmr * 1.55
        }
        else if (slideVal == 0)
        {
            bmi = bmr * 1.725
        }
        else
        {
            bmi = bmr * 1.9
        }
        tText.text = String(format:"%.1f", bmi)
        bmrLab.text = String(format:"%.1f",bmr)
        println(wText.text)
        bodyFat = bfText.text.toInt()
        println(bfText.text)
        tempDouble = Double(bodyFat) / 100
        tempCalc = Double(oldWeight)
        tempWeight = tempCalc * tempDouble
        newweight = tempCalc - tempWeight
        
        lText.text = String(format:"%.1f", newweight)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

