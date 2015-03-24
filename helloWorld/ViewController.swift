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
    var height : Double!
    var newweight : Double!
    var oldWeight : Int!
    var tempWeight : Double!
    var tempCalc : Double!
    var tempDouble : Double!
    var final : String!
    var wasSlided : Bool = true

    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var toggle: UISwitch!
    @IBAction func valueChange(sender: UISlider) {
        var currentValue = Int(sender.value)
        slideLabel.text = "\(currentValue)"
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
        height = atof(hText.text)
        height = height * 2.54
        oldWeight = wText.text.toInt()
        println(wText.text)
        bodyFat = bfText.text.toInt()
        println(bfText.text)
        tempDouble = Double(bodyFat) / 100
        tempCalc = Double(oldWeight)
        tempWeight = tempCalc * tempDouble
        newweight = tempCalc - tempWeight
        tText.text = String(format:"%.1f", height)
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

