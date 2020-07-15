//
//  ViewController.swift
//  Calculator_Alex
//
//  Created by Edgar Alexander on 13/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
  //resulLabel
  @IBOutlet weak var resulLabel: UITextView!
  //numbers
  @IBOutlet weak var number0: UIButton!
  @IBOutlet weak var number1: UIButton!
  @IBOutlet weak var number2: UIButton!
  @IBOutlet weak var number3: UIButton!
  @IBOutlet weak var number4: UIButton!
  @IBOutlet weak var number5: UIButton!
  @IBOutlet weak var number6: UIButton!
  @IBOutlet weak var number7: UIButton!
  @IBOutlet weak var number8: UIButton!
  @IBOutlet weak var number9: UIButton!
  @IBOutlet weak var numberDecimal: UIButton!
  //operators
  @IBOutlet weak var operatorAC: UIButton!
  @IBOutlet weak var operatorPlusMinus: UIButton!
  @IBOutlet weak var operatorPercent: UIButton!
  @IBOutlet weak var operatorResult: UIButton!
  @IBOutlet weak var operatorSum: UIButton!
  @IBOutlet weak var operatorSubtraction: UIButton!
  @IBOutlet weak var operatorMultiplication: UIButton!
  @IBOutlet weak var operatorDivision: UIButton!
  //variables
  var numb1:Double = 0;
  var oper = ""
  var numb2:Double = 0;
  var result:Double = 0.0
  var selecOper = false
  
  func chargeNumbersUI(){
        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number6.round()
        number7.round()
        number8.round()
        number9.round()
        numberDecimal.round()
        operatorAC.round()
        operatorPlusMinus.round()
        operatorPercent.round()
        operatorResult.round()
        operatorSum.round()
        operatorSubtraction.round()
        operatorMultiplication.round()
        operatorDivision.round()
        resulLabel.text = ""
    }
    
    func operations (_ num1:Double,_ num2:Double,_ operan: String)->Double{
        if oper == "+"{
            return num1 + num2
        }
        else if oper == "-"{
            return num1 - num2
        }
        else if oper == "x"{
            return num1 * num2
        }
        else if oper == "/"{
            return num1 / num2
        }
        else{
            return 0.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chargeNumbersUI()
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        resulLabel.text = resulLabel.text! + (sender.titleLabel?.text!)!
    }
    
    @IBAction func operations(_ sender: UIButton) {
        if sender.titleLabel?.text == "="{
            let numberSet = CharacterSet.whitespacesAndNewlines.union(.symbols)
            let componentsNumber = resulLabel.text.components(separatedBy: numberSet)
            let numbers = componentsNumber.filter { !$0.isEmpty }
            let symbolSet = CharacterSet.whitespacesAndNewlines.union(.decimalDigits)
            let componentsSymbols = resulLabel.text.components(separatedBy: symbolSet)
            let operandos = componentsSymbols.filter { !$0.isEmpty }
            if oper == "+"{
                result = numb1 + numb2
                resulLabel.text =  resulLabel.text + "\n" + String(format: "%.0f", result)
            }
            if oper == "-"{
                result = numb1 - numb2
                resulLabel.text = String(format: "%.0f", result)
            }
            else if oper == "/"{
                result = numb1 / numb2
                resulLabel.text = String(format: "%.0f", result)
            }
            else if oper == "x"{
                result = numb1 * numb2
                //resulLabel.text = String(format: "%.0f", result)\n String(numb1 "x" numb2)
            }
            else if oper == "AC"{
                //result = .leastNonzeroMagnitude
                //resulLabel.text = String(result)
            }
        }
        else{
           numb1 = Double(resulLabel.text!) ?? 0.0
            resulLabel.text = resulLabel.text + sender.titleLabel!.text!
            oper = sender.titleLabel!.text!
        }
  }
}

