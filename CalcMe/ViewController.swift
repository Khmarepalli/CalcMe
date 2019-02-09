//
//  ViewController.swift
//  CalcMe
//
//  Created by Krishna Marepalli on 2/8/19.
//  Copyright © 2019 Krishna Marepalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOne: Int = 0, numberTwo: Int = 0, numberOneTwoEquals: Int = 0
    var numberOneBool = true, numberTwoBool = false, numberThreeBool = false
    var signOperator = ""
    @IBOutlet weak var Label: UILabel!
    @IBAction func BtnAC(_ sender: Any) {
        if numberOneBool == true
        {
            numberOne = 0
        }
        else if numberTwoBool == true
        {
            if numberTwo == 0
            {
                numberOne = 0
                numberTwoBool = false
                numberOneBool = true
            }
            else
            {
                numberTwo = 0
            }
        }
    }
    @IBAction func BtnDel(_ sender: Any) {
        if numberOneBool == true
        {
            var stringNumber = "\(numberOne)"
            stringNumber.remove(at: stringNumber.index(before: stringNumber.endIndex))
            
        }
        else if numberTwoBool == true
        {
            var stringNumber = "\(numberTwo)"
            stringNumber.remove(at: stringNumber.index(before: stringNumber.endIndex))
            
        }

    }
    @IBAction func BtnNo9(_ sender: Any) {
        if numberOneBool == true
        {
            if numberOne == 0
            {
                numberOne = 9
            }
            else
            {
                var stringNumber = "\(numberOne)"
                stringNumber += "9"
            }
        }
        else if numberTwoBool == true
        {
            if numberOne == 0
            {
                numberOne = 9
            }
            else
            {
                var stringNumber = "\(numberTwo)"
                stringNumber += "9"
            }

        }

    }
    @IBAction func BtnNo8(_ sender: Any) {
        
    }
    @IBAction func BtnNo7(_ sender: Any) {
        
    }
    @IBAction func BtnNo6(_ sender: Any) {
        
    }
    @IBAction func BtnNo5(_ sender: Any) {
        
    }
    @IBAction func BtnNo4(_ sender: Any) {
        
    }
    @IBAction func BtnNo3(_ sender: Any) {
        
    }
    @IBAction func BtnNo2(_ sender: Any) {
        
    }
    @IBAction func BtnNo1(_ sender: Any) {
        
    }
    @IBAction func BtnNo0(_ sender: Any) {
        
    }
    @IBAction func BtnNoDecimal(_ sender: Any) {
        
    }
    @IBAction func BtnDivide(_ sender: Any) {
        
    }
    @IBAction func BtnMultiplication(_ sender: Any) {
        
    }
    @IBAction func BtnSubtract(_ sender: Any) {
        
    }
    @IBAction func BtnAddition(_ sender: Any) {
        
    }
    @IBAction func BtnEquals(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

