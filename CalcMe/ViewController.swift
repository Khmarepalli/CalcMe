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
            Label.text = "\(numberOne)"
        }
        else if numberTwoBool == true
        {
            if numberTwo == 0
            {
                numberOne = 0
                numberTwoBool = false
                numberOneBool = true
                Label.text = "\(numberOne)"
            }
            else
            {
                numberTwo = 0
                Label.text = "\(numberTwo)"
            }
        }
    }
    @IBAction func BtnDel(_ sender: Any) {
        if numberOneBool == true
        {
            var stringNumber = "\(numberOne)"
            stringNumber.remove(at: stringNumber.index(before: stringNumber.endIndex))
            Label.text = stringNumber
        }
        else if numberTwoBool == true
        {
            var stringNumber = "\(numberTwo)"
            stringNumber.remove(at: stringNumber.index(before: stringNumber.endIndex))
            Label.text = stringNumber
        }
        

    }
    @IBAction func BtnNo9(_ sender: Any) {
        setNumber(number: 9)
    }
    @IBAction func BtnNo8(_ sender: Any) {
        setNumber(number: 8)
    }
    @IBAction func BtnNo7(_ sender: Any) {
        setNumber(number: 7)
    }
    @IBAction func BtnNo6(_ sender: Any) {
        setNumber(number: 6)
    }
    @IBAction func BtnNo5(_ sender: Any) {
        setNumber(number: 5)
    }
    @IBAction func BtnNo4(_ sender: Any) {
        setNumber(number: 4)
    }
    @IBAction func BtnNo3(_ sender: Any) {
        setNumber(number: 3)
    }
    @IBAction func BtnNo2(_ sender: Any) {
        setNumber(number: 2)
    }
    @IBAction func BtnNo1(_ sender: Any) {
        setNumber(number: 1)
    }
    @IBAction func BtnNo0(_ sender: Any) {
        setNumber(number: 0)
    }
    @IBAction func BtnNoDecimal(_ sender: Any) {
        
    }
    @IBAction func BtnDivide(_ sender: Any) {
        if numberTwoBool == true
        {
            numberOne /= numberTwo
            numberTwoBool = false
            numberOneBool = true
            Label.text = "0"
        }
        else if numberOneBool == true
        {
            numberTwoBool = true
            numberOneBool = false
            Label.text = "0"
        }

    }
    @IBAction func BtnMultiplication(_ sender: Any) {
        if numberTwoBool == true
        {
            numberOne *= numberTwo
            numberTwoBool = false
            numberOneBool = true
            Label.text = "0"
        }
        else if numberOneBool == true
        {
            numberTwoBool = true
            numberOneBool = false
            Label.text = "0"
        }

    }
    @IBAction func BtnSubtract(_ sender: Any) {
        if numberTwoBool == true
        {
            numberOne -= numberTwo
            numberTwoBool = false
            numberOneBool = true
            Label.text = "0"
        }
        else if numberOneBool == true
        {
            numberTwoBool = true
            numberOneBool = false
            Label.text = "0"
        }

    }
    @IBAction func BtnAddition(_ sender: Any) {
        if numberTwoBool == true
        {
            numberOne += numberTwo
            numberTwoBool = false
            numberOneBool = true
            Label.text = "0"
        }
        else if numberOneBool == true
        {
            numberTwoBool = true
            numberOneBool = false
            Label.text = "0"
        }
    }
    @IBAction func BtnEquals(_ sender: Any) {
        numberOne = numberOne + numberTwo
        numberTwo = 0
        Label.text = numberOne.withCommas()
        numberOneBool = true
        numberTwoBool = false
    }
    
    func setNumber(number: Int)
    {
        if numberOneBool == true
        {
            if numberOne == 0
            {
                numberOne = number
                Label.text = numberOne.withCommas()
            }
            else
            {
                var stringNumber = "\(numberOne)"
                stringNumber = stringNumber + String(number)
                numberOne = Int(stringNumber)!
                Label.text = numberOne.withCommas()
            }
        }
        else if numberTwoBool == true
        {
            if numberTwo == 0
            {
                numberTwo = number
                Label.text = numberTwo.withCommas()
            }
            else
            {
                var stringNumber = "\(numberTwo)"
                stringNumber += String(number)
                numberTwo = Int(stringNumber)!
                Label.text = numberTwo.withCommas()
            }
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Label.text = "0"
    }


}

extension Int {
    func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}

