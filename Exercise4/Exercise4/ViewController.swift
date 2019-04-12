//
//  ViewController.swift
//  Exercise4
//
//  Created by SWEET HOME (^0^)!!! on 4/11/19.
//  Copyright © 2019 LUONG THUAN CHUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrayDivisor:[Int] = []
    
    var myInputText:UITextField = {
        let intxt = UITextField()
        intxt.translatesAutoresizingMaskIntoConstraints = false
        intxt.backgroundColor = .gray
        intxt.textAlignment = .center
        intxt.font = UIFont(name: "arial", size: 50)
        return intxt
    }()
   

    var myButton:UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("find divisor", for: .normal)
        but.backgroundColor = .red
        but.addTarget(self, action: #selector(Touch_myButton), for: .touchUpInside)
        return but
    }()
    
    var myLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.backgroundColor = .white
        lb.textAlignment = .center
        lb.text = ""
        lb.font = UIFont(name: "arial", size: 20)
        return lb
    }()
    
    ////FUNC setup UI
    func SetupUI()
    {
        self.view.addSubview(myInputText)
        self.view.addSubview(myButton)
        self.view.addSubview(myLabel)
        
        myInputText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        myInputText.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myInputText.widthAnchor.constraint(equalToConstant: 150).isActive = true
        myInputText.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        
        myButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 90).isActive = true
        myButton.widthAnchor.constraint(equalToConstant: 190).isActive = true
        
        myLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -150).isActive = true
        myLabel.widthAnchor.constraint(equalToConstant: 320).isActive = true
    }
    
    ////FUNC Touch_myButton
    @objc func Touch_myButton(sender : UIButton)
    {
        print(sender.currentTitle!)
        guard let x = Int(myInputText.text!) else {
            myLabel.text = "number input is error!"
            return
        }
       
        myLabel.text = "Greatest divisor is: " +   printDivisors(x: x)
        
    }
    
    
    
    /////FUNC find Divisor
    func printDivisors(x:Int)->String{
        arrayDivisor.removeAll()
        let sqr = sqrt(Double(x))
        for i in 2..<Int(sqr)+1 {
            if x % i == 0 {
               arrayDivisor.append(i)
                if i != (x/i) {
                   // print((x/i))
                   
                    arrayDivisor.append(x/i)
                }
                
            }
           
        }
        if arrayDivisor.count>0
        {
            arrayDivisor.sort()
            return String(arrayDivisor.last!)
        }
        else
        {
            return "ERROR!"
        }
        
    }
    
    ///////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        // Do any additional setup after loading the view, typically from a nib.
        SetupUI()
    }

}

