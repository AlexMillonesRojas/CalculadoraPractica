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
  var result:Double = 0.0
  var contador = 0
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
    
    func arrayNum()->[String]{
        let numberSet = CharacterSet.whitespacesAndNewlines.union(.symbols).union(.punctuationCharacters).union(.letters)
        let componentsNumber = resulLabel.text.components(separatedBy: numberSet)
        let numbers = componentsNumber.filter { !$0.isEmpty }
        return numbers
    }
    func arraySymb()->[String]{
        let symbolSet = CharacterSet.whitespacesAndNewlines.union(.decimalDigits)
        let componentsSymbols = resulLabel.text.components(separatedBy: symbolSet)
        let operandos = componentsSymbols.filter { !$0.isEmpty }
        return operandos
    }
    func calculoTotal(){
        var numbers = arrayNum()
        var operandos = arraySymb()
        if contador != 0{
            let range =  numbers.startIndex...numbers.index(numbers.startIndex, offsetBy: contador)
            numbers.removeSubrange(range)
            let range2 = operandos.startIndex...operandos.index(operandos.startIndex, offsetBy: contador-1)
            operandos.removeSubrange(range2)
        }
        contador = operandos.count
        for index in 0...operandos.count-1{
            if index == 0{
                result = operations(Double(numbers[index]) ?? 0.0, Double(numbers[index+1]) ?? 0.0, operandos[index])
            }
            else{
                result = operations(result, Double(numbers[index+1]) ?? 0.0, operandos[index])
            }
        }
        resulLabel.text = resulLabel.text + "\n" + String(format: "%.0f", result)
        result = 0.0
    }
    
    func operations (_ num1: Double,_ num2: Double,_ operan: String)->Double{
        if operan == "+"{
            return num1 + num2
        }
        else if operan == "-"{
            return num1 - num2
        }
        else if operan == "x"{
            return num1 * num2
        }
        else if operan == "/"{
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
            calculoTotal()
        }
        else if sender.titleLabel?.text == "AC"{
            resulLabel.text = ""
        }
        else{
            resulLabel.text = resulLabel.text! + (sender.titleLabel?.text!)!
        }
  }
}

