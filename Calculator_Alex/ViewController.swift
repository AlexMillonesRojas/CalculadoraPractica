//
//  ViewController.swift
//  Calculator_Alex
//
//  Created by Edgar Alexander on 13/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
  //resullabel
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
    var total:Double = 0;// Total
    var temp:Double = 0;//Valor por pantalla
    var operating = false//Indicar si se ha seleccionado un operador
    var decimal = false // Indicar si el valor es decimal
    var operation: OperationType = .none //Operacion actual
    //constantes
    private let kDecimalSeparator = Locale.current.decimalSeparator!
    private let kMaxLength = 9
    private let kTotal = "total"
    enum OperationType {
        case none, sum, substraction, multiplication, division ,percent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       // textView.text = "80\n80"
        
        
        
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
     // Button Actions
    @IBAction func operatorACAction(_ sender: UIButton) {
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
    }
    @IBAction func operatorSubstractionAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorMultiplicationtAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorDivisionAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func numberAction(_ sender: UIButton){
        sender.shine()
        print(sender.tag)
    }
    //Limpia los valores
    /*private func clear() {
        if operation == .none {
            total = 0
        }
        operation = .none
        operatorAC.setTitle("AC", for: .normal)
        if temp != 0 {
            temp = 0
            resulLabel.text = "0"
        } else {
            total = 0
            result()
        }
    }*/
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

