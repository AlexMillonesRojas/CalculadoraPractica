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
  @IBOutlet weak var resulLabel: UILabel!
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
                   
   
    override func viewDidLoad() {
        super.viewDidLoad()
       // resultLabel.text = "80\n80"
        
       // resulLabel = "" + .Tite
        
     // UI
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
   
    }
    @IBAction func numbers(_ sender: UIButton) {
        resulLabel.text = resulLabel.text! + (sender.titleLabel?.text!)!
        print(resulLabel)
        
        
    }
    @IBAction func operations(_ sender: UIButton) {
        if sender.titleLabel?.text == "="{
            numb2 = Double(resulLabel.text!) ?? 0.0
            if oper == "+"{
                result = numb1 + numb2
                resulLabel.text = String(result)
            }
        }
        else{
           numb1 = Double(resulLabel.text!) ?? 0.0
            resulLabel.text = ""
            oper = sender.titleLabel!.text!
        }
        
        
        print("numb1")
        print(numb1)
        print("numb2")
        print (numb2)
    }
}

     // Button Actions
    /*@IBAction func operatorACAction(_ sender: UIButton) {
        sender.shine()
        
    }
    @IBAction func operatorPlusMinusAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorPercentAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorResultAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorSumAction(_ sender: UIButton) {
        sender.shine()
        resulLabel.text = "+";
    }
    @IBAction func operatorSubstractionAction(_ sender: UIButton) {
        sender.shine()
        resulLabel.text = "-";
    }
    @IBAction func operatorMultiplicationtAction(_ sender: UIButton) {
        sender.shine()
        resulLabel.text = "*";
        operation = sender.tag
        performingMath = true;
    }
    @IBAction func operatorDivisionAction(_ sender: UIButton) {
        sender.shine()
        resulLabel.text = "/";
        operation = sender.tag
        performingMath = true;
        
    }
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func numberAction(_ sender: UIButton){
        sender.shine()
        
    }
        
        }
   
  
   
    
    /*func result() {
    
    switch operation {

    case .none:
        break
    case .sum:
        total = total + temp
        break
    case .substraction:
        total = total - temp
        break
    case .multiplication:
        total = total * temp
        break
    case .division:
        total = total / temp
        break
    case .percent:
        temp = temp / 100
        total = temp
        break
    }
}*/
*/
    

    




