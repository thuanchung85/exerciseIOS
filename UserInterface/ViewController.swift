//
//  ViewController.swift
//  UserInterface
//
//  Created by test on 4/19/19.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textfieldUserName: UITextField!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var textfieldPassword: UITextField!
    
    @IBOutlet weak var createNewAccountButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        //setup logoImage
        logoImage.image = UIImage(named: "fbLogo@1x")
       logoImage.contentMode = .scaleAspectFit
        
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        
        //setup textfieldUserName
        textfieldUserName.translatesAutoresizingMaskIntoConstraints = false
        textfieldUserName.placeholder = NSAttributedString(string: "Email or phone number", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray]).string
        
        textfieldUserName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldUserName.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 50).isActive = true
        textfieldUserName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        textfieldUserName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //setup textfieldPassword
        textfieldPassword.translatesAutoresizingMaskIntoConstraints = false
        textfieldPassword.placeholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray]).string
        textfieldPassword.isSecureTextEntry = true
        
        textfieldPassword.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldPassword.topAnchor.constraint(equalTo: textfieldUserName.bottomAnchor, constant: 10).isActive = true
        textfieldPassword.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        textfieldPassword.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup loginButton
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = UIColor(displayP3Red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        loginButton.setTitle("Login", for: .normal)
        loginButton.tintColor = .white
        
        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: textfieldPassword.bottomAnchor, constant: 10).isActive = true
        loginButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup forgotPasswordButton
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.tintColor = .blue
        forgotPasswordButton.setTitle("Forgot password?", for: .normal)
        
        forgotPasswordButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10).isActive = true
        forgotPasswordButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup backButton
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.tintColor = .blue
        backButton.setTitle("Back", for: .normal)
        
        backButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        backButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 5).isActive = true
        backButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        backButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup createNewAccountButton
        createNewAccountButton.translatesAutoresizingMaskIntoConstraints = false
        createNewAccountButton.tintColor = .blue
        createNewAccountButton.setTitle("Create new account", for: .normal)
        
        createNewAccountButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        createNewAccountButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        createNewAccountButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        createNewAccountButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        createNewAccountButton.backgroundColor = .clear
        createNewAccountButton.layer.cornerRadius = 5
        createNewAccountButton.layer.borderWidth = 1
        createNewAccountButton.layer.borderColor = UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1).cgColor
        
    }


}

