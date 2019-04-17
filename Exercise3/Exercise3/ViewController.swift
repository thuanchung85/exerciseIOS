//
//  ViewController.swift
//  Exercise3
//
//  Created by SWEET HOME (^0^)!!! on 4/10/19.
//  Copyright © 2019 LUONG THUAN CHUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myInputText:UITextField = {
        let intxt = UITextField()
        intxt.translatesAutoresizingMaskIntoConstraints = false
        intxt.backgroundColor = .gray
        intxt.textAlignment = .center
        intxt.font = UIFont(name: "arial", size: 50)
        return intxt
    }()
    var myInputText2:UITextField = {
        let intxt = UITextField()
        intxt.translatesAutoresizingMaskIntoConstraints = false
        intxt.backgroundColor = .gray
        intxt.textAlignment = .center
        intxt.font = UIFont(name: "arial", size: 50)
        return intxt
    }()
    
    var myButtonAddition:UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("+", for: .normal)
        but.backgroundColor = .red
        but.addTarget(self, action: #selector(Touch_myButton), for: .touchUpInside)
        return but
    }()
    
    
    var myButtonSubtraction:UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("-", for: .normal)
        but.backgroundColor = .red
        but.addTarget(self, action: #selector(Touch_myButton), for: .touchUpInside)
        return but
    }()
    
    
    var myButtonMultiply:UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("x", for: .normal)
        but.backgroundColor = .red
        but.addTarget(self, action: #selector(Touch_myButton), for: .touchUpInside)
        return but
    }()
    
    
    var myButtonDivision:UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("/", for: .normal)
        but.backgroundColor = .red
        but.addTarget(self, action: #selector(Touch_myButton), for: .touchUpInside)
        return but
    }()
    
    var myLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.backgroundColor = .white
        lb.textAlignment = .center
        lb.font = UIFont(name: "arial", size: 20)
        return lb
    }()
    
    ////FUNC setup UI
    func SetupUI()
    {
        self.view.addSubview(myInputText)
        self.view.addSubview(myInputText2)
        self.view.addSubview(myButtonAddition)
         self.view.addSubview(myButtonSubtraction)
         self.view.addSubview(myButtonDivision)
         self.view.addSubview(myButtonMultiply)
        self.view.addSubview(myLabel)
        
        myInputText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -90).isActive = true
        myInputText.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myInputText.widthAnchor.constraint(equalToConstant: 150).isActive = true
        myInputText.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        myInputText2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 90).isActive = true
        myInputText2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myInputText2.widthAnchor.constraint(equalToConstant: 150).isActive = true
        myInputText2.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        myButtonAddition.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myButtonAddition.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 90).isActive = true
        myButtonAddition.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        myButtonSubtraction.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myButtonSubtraction.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive = true
        myButtonSubtraction.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        myButtonDivision.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myButtonDivision.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 210).isActive = true
        myButtonDivision.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        myButtonMultiply.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myButtonMultiply.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 270).isActive = true
        myButtonMultiply.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        myLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -150).isActive = true
        myLabel.widthAnchor.constraint(equalToConstant: 220).isActive = true
    }
    
    ////FUNC Touch_myButton
    @objc func Touch_myButton(sender : UIButton)
    {
        print(sender.currentTitle!)
        guard let x:Double = Double(myInputText.text!) else {
             myLabel.text = "number input is error!"
            return
        }
        
        guard let y:Double = Double(myInputText2.text!) else {
            myLabel.text = "number input is error!"
            return
        }
        
        switch sender.currentTitle {
        case "+":
            myLabel.text = mathOfTwoNumber(number1: Int(x), number2: Int(y), result: { (x, y) -> String in
                return String(x + y)
            })
        case "-":
            myLabel.text = mathOfTwoNumber(number1: Int(x), number2: Int(y), result: { (x, y) -> String in
                return String(x - y)
            })
        case "x":
            myLabel.text = mathOfTwoNumber(number1: Int(x), number2: Int(y), result: { (x, y) -> String in
                return String(x * y)
            })
        case "/":
            myLabel.text = mathOfTwoNumber(number1: Int(x), number2: Int(y), result: { (x, y) -> String in
                return String(x / y)
            })
        default:
            return
        }
    }
    
    typealias mathClosure = (Int,Int)->String
                
    func mathOfTwoNumber(number1:Int, number2:Int, result:mathClosure) ->String{
        
       return result(number1,number2)
    }
    
    
    ///////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        // Do any additional setup after loading the view, typically from a nib.
        SetupUI()
    }


}

