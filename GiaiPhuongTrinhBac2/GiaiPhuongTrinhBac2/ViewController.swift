//
//  ViewController.swift
//  GiaiPhuongTrinhBac2
//
//  Created by test on 5/8/19.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aNumber: UITextField!
    @IBOutlet weak var cNumber: UITextField!
    @IBOutlet weak var bNumber: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var findXButton: UIButton!
    
    ///View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        findXButton.addTarget(self, action: #selector(QuadraticEquationCalculator), for: .touchUpInside)
       
        
    }
    // func findXButton tuoch
    @objc func QuadraticEquationCalculator()
    {
        //check textfield input
        if let na = Double(aNumber.text!)
        {
            if let nb = Double(bNumber.text!)
            {
                if let nc = Double(cNumber.text!)
                {
                    resultLable.text = quadraticEquationHandler(A: na, B: nb, C: nc)
                }
                else
                {
                     resultLable.text = "Please input number! Your number C must be a Digital!"
                    return
                }
            }
            else
            {
                 resultLable.text = "Please input number! Your number B must be a Digital!"
                return
            }
        }
        else
        {
             resultLable.text = "Please input number! Your number A must be a Digital!"
            return
        }
    }
    
    ///func quadraticEquationHandler
    func quadraticEquationHandler(A numberA:Double, B numberB:Double, C numberC:Double) -> String
    {
        let a: Double = numberA
        let b: Double = numberB
        let c: Double = numberC
        
        var delta:Double?
        let x1:Double?
        let x2:Double?
        
        //special case if a+b+c =0
        if(a != 0)
        {
            if(a + b + c == 0)
            {
                return "Equation Special Case a + b + c = 0: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \((b * b) - (4 * a * c)) \n x1 = 1 \n x2 = \(c/a)"
            }
            
            //special case if a-b+c =0
            if(a - b + c == 0)
            {
                return "Equation Special Case a - b + c = 0: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \((b * b) - (4 * a * c)) \n x1 = -1 \n x2 = \(-1 * c/a)"
            }
        }
        //normal case
        //Case a==0
        if(a==0){
            //case b==0
            if(b==0){
                if (c==0)
                {
                    return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = unknow \n x1 = unknow \n x2 = unknow"
                }
                else
                {
                    return "Equation: error! (\(b))x + (\(c)) = 0 is not true"
                }
            }
                //case b!=0
            else
            {
                return "Equation: (\(b))x + (\(c)) = 0 \n deltal = unknow \n x1 = \((-1 * c)/b) \n x2 = \((-1 * c)/b)"
            }
        }
            //case a !=0
        else {
            //calculate delta
            delta = (b * b) - (4 * a * c)
            
            //delta < 0
            if delta! < 0
            {
                return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \(delta!) \n x1 = unvariable \n x2 = unvariable"
            }
            if delta! == Double(0)
            {
                x1 = (-1 * b )/(2 * a)
                x2 = x1
                return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \(delta!) \n x1 = x2 = \(x1!)"
            }
            if delta! > 0
            {
                x1 = ((-1 * b) + sqrt(delta!)) / (2 * a)
                x2 = ((-1 * b) - sqrt(delta!)) / (2 * a)
                return "Equation: (\(a))x2 + (\(b))x + (\(c)) = 0 \n deltal = \(delta!) \n x1 = \(x1!) \n x2 = \(x2!)"
            }
        }
        return "end"
    }
    
    
}

