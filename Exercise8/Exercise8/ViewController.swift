//
//  ViewController.swift
//  Exercise8
//
//  Created by SWEET HOME (^0^)!!! on 4/25/19.
//  Copyright © 2019 LUONG THUAN CHUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        
        lb.textColor = UIColor(displayP3Red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        lb.textAlignment = .center
        lb.text = "What's Your Name?"
        lb.font = UIFont(name: "arial", size: 30)
        return lb
    }()
    
    var myLabel2:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 2
        lb.textAlignment = .center
        lb.text = "Using your real name makes it easier for friends to recognize you."
        lb.font = UIFont(name: "arial", size: 15)
        return lb
    }()
    
    var myInputTextFirstName:UITextField = {
        let intxt = UITextField()
        intxt.translatesAutoresizingMaskIntoConstraints = false
        intxt.backgroundColor = .white
        intxt.layer.cornerRadius = 4.0
        intxt.layer.masksToBounds = true
        intxt.placeholder = "First name"
        intxt.font = UIFont(name: "arial", size: 15)
        intxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: intxt.frame.height))
        intxt.leftViewMode = .always
        return intxt
    }()
    
    var myInputTextLastName:UITextField = {
        let intxt = UITextField()
        intxt.translatesAutoresizingMaskIntoConstraints = false
        intxt.backgroundColor = .white
        intxt.layer.cornerRadius = 4.0
        intxt.layer.masksToBounds = true
        intxt.placeholder = "Last name"
        intxt.font = UIFont(name: "arial", size: 15)
        intxt.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: intxt.frame.height))
        intxt.leftViewMode = .always
        return intxt
    }()
    
    let textFieldSeparatorLine : UIView = {
        let nameseparatorline = UIView()
        nameseparatorline.translatesAutoresizingMaskIntoConstraints = false
        nameseparatorline.backgroundColor = .lightGray
        return nameseparatorline
    }()
    
    var myButtonAlreadyHaveAccount:UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.setTitle("Already have an account?", for: .normal)
        but.setTitleColor(UIColor(displayP3Red: 59/255, green: 89/255, blue: 152/255, alpha: 1), for: .normal)
        return but
    }()
    
    ///setupLayout
    func setupLayout()
    {
        view.addSubview(myLabel)
        myLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -100).isActive = true
        myLabel.widthAnchor.constraint(equalToConstant: 320).isActive = true
        
        view.addSubview(myLabel2)
        myLabel2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myLabel2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        myLabel2.widthAnchor.constraint(equalToConstant: 320).isActive = true
        
        //first name
        view.addSubview(myInputTextFirstName)
        myInputTextFirstName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -80).isActive = true
        myInputTextFirstName.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -50).isActive = true
        myInputTextFirstName.widthAnchor.constraint(equalToConstant: 140).isActive = true
        myInputTextFirstName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //last name
        view.addSubview(myInputTextLastName)
        myInputTextLastName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 80).isActive = true
        myInputTextLastName.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -50).isActive = true
        myInputTextLastName.widthAnchor.constraint(equalToConstant: 140).isActive = true
        myInputTextLastName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        ///make a line
        view.addSubview(textFieldSeparatorLine)
        view.sendSubviewToBack(textFieldSeparatorLine)
        textFieldSeparatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        textFieldSeparatorLine.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor).isActive = true
        textFieldSeparatorLine.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        textFieldSeparatorLine.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        //make button already have an account
        view.addSubview(myButtonAlreadyHaveAccount)
        myButtonAlreadyHaveAccount.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myButtonAlreadyHaveAccount.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        myButtonAlreadyHaveAccount.widthAnchor.constraint(equalToConstant: 250).isActive = true
        myButtonAlreadyHaveAccount.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    
    //////////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(displayP3Red: 215/255, green: 215/255, blue: 215/255, alpha: 1)
        setupLayout()
    }


}

