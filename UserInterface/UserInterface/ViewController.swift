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
    
    @IBOutlet weak var orLable: UILabel!
    
    @IBOutlet weak var createNewAccountButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    let textFieldSeparatorLine : UIView = {
        let nameseparatorline = UIView()
        nameseparatorline.translatesAutoresizingMaskIntoConstraints = false
        nameseparatorline.backgroundColor = .lightGray
        return nameseparatorline
    }()
    let textFieldSeparatorLine2 : UIView = {
        let nameseparatorline = UIView()
        nameseparatorline.translatesAutoresizingMaskIntoConstraints = false
        nameseparatorline.backgroundColor = .lightGray
        return nameseparatorline
    }()
    
    
   
    
    var runJust1 : Bool = true
    ///////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        logoImage.image = UIImage(named: "fbLogo@1x")
        logoImage.contentMode = .scaleAspectFit
        logoImage.layer.cornerRadius = 10
        logoImage.layer.masksToBounds = true
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        textfieldUserName.translatesAutoresizingMaskIntoConstraints = false
        textfieldUserName.placeholder = NSAttributedString(string: "Email or phone number", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray]).string
        textfieldUserName.layer.cornerRadius = 10
        textfieldUserName.layer.masksToBounds = true
        textfieldUserName.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        textfieldUserName.layer.borderWidth = 0.5
        
        textfieldPassword.translatesAutoresizingMaskIntoConstraints = false
        textfieldPassword.placeholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray]).string
        textfieldPassword.isSecureTextEntry = true
        textfieldPassword.layer.cornerRadius = 10
        textfieldPassword.layer.masksToBounds = true
        textfieldPassword.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        textfieldPassword.layer.borderWidth = 0.5
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = UIColor(displayP3Red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        loginButton.setTitle("Login", for: .normal)
        loginButton.tintColor = .white
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.tintColor = .blue
        forgotPasswordButton.setTitle("Forgot password?", for: .normal)
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.tintColor = .blue
        backButton.setTitle("Back", for: .normal)
        
        createNewAccountButton.translatesAutoresizingMaskIntoConstraints = false
        createNewAccountButton.tintColor = .blue
        createNewAccountButton.setTitle("Create new account", for: .normal)
        createNewAccountButton.backgroundColor = .clear
        createNewAccountButton.layer.cornerRadius = 10
        createNewAccountButton.layer.masksToBounds = true
        createNewAccountButton.layer.borderWidth = 1
        createNewAccountButton.layer.borderColor = UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1).cgColor
        
        orLable.translatesAutoresizingMaskIntoConstraints = false
        orLable.text = "OR"
        orLable.textAlignment = .center
        orLable.backgroundColor = .white
        
        self.view.addSubview(textFieldSeparatorLine)
        
        self.view.addSubview(textFieldSeparatorLine2)
    }
    
    ///func setup for portrait
    func SetupUIPortrait() {
       
        
        //setup logoImage
        
        logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        
        //setup textfieldUserName
        
        textfieldUserName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldUserName.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 50).isActive = true
        textfieldUserName.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textfieldUserName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //setup textfieldPassword
       
        
        textfieldPassword.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldPassword.topAnchor.constraint(equalTo: textfieldUserName.bottomAnchor, constant: 10).isActive = true
        textfieldPassword.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        textfieldPassword.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup loginButton
        
        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: textfieldPassword.bottomAnchor, constant: 10).isActive = true
        loginButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup forgotPasswordButton
       
        forgotPasswordButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10).isActive = true
        forgotPasswordButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup backButton
       
        backButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        backButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 5).isActive = true
        backButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        backButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup createNewAccountButton
        
        createNewAccountButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        createNewAccountButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        createNewAccountButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        createNewAccountButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
       
        //setup orLable
        
        orLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        orLable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -80).isActive = true
        orLable.widthAnchor.constraint(equalToConstant: 50).isActive = true
         orLable.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///make a line
        textFieldSeparatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        textFieldSeparatorLine.widthAnchor.constraint(equalToConstant: 250).isActive = true
        textFieldSeparatorLine.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        textFieldSeparatorLine.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.view.sendSubviewToBack(textFieldSeparatorLine)
        ///make a line2
     
       
        textFieldSeparatorLine2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        textFieldSeparatorLine2.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textFieldSeparatorLine2.topAnchor.constraint(equalTo: textfieldUserName.bottomAnchor, constant: 4).isActive = true
        textFieldSeparatorLine2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        
        print("SetupUIPortrait")
        
    }
    ///func setup for portrait
    func SetupUILanscape() {
        //setup logoImage
        
        logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10).isActive = true
        
        //setup textfieldUserName
        
        textfieldUserName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldUserName.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 20).isActive = true
        textfieldUserName.widthAnchor.constraint(equalToConstant: 300).isActive = true
        textfieldUserName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //setup textfieldPassword
        
        
        textfieldPassword.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldPassword.topAnchor.constraint(equalTo: textfieldUserName.bottomAnchor, constant: 10).isActive = true
        textfieldPassword.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        textfieldPassword.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup loginButton
        
        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: textfieldPassword.bottomAnchor, constant: 10).isActive = true
        loginButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup forgotPasswordButton
        
        forgotPasswordButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 7).isActive = true
        forgotPasswordButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        forgotPasswordButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup backButton
        
        backButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        backButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: -8).isActive = true
        backButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        backButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup createNewAccountButton
        
        createNewAccountButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        createNewAccountButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10).isActive = true
        createNewAccountButton.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        createNewAccountButton.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        
        //setup orLable
        
        orLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -180).isActive = true
        orLable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        orLable.widthAnchor.constraint(equalToConstant: 50).isActive = true
        orLable.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
   //func remove all contraints
    func removeAllScontraints()
    {
        for constraint in self.view.constraints
        {
            self.view.removeConstraint(constraint)
        }
        
        for constraint in logoImage.constraints
        {
            logoImage.removeConstraint(constraint)
        }
        
        for constraint in textfieldUserName.constraints
        {
            textfieldUserName.removeConstraint(constraint)
        }
        
        for constraint in textfieldPassword.constraints
        {
            textfieldPassword.removeConstraint(constraint)
        }
        
        for constraint in loginButton.constraints
        {
            loginButton.removeConstraint(constraint)
        }
        
        for constraint in forgotPasswordButton.constraints
        {
            forgotPasswordButton.removeConstraint(constraint)
        }
        
        for constraint in backButton.constraints
        {
            backButton.removeConstraint(constraint)
        }
        
        for constraint in createNewAccountButton.constraints
        {
            createNewAccountButton.removeConstraint(constraint)
        }
        
        for constraint in orLable.constraints
        {
            orLable.removeConstraint(constraint)
        }
        
        for constraint in textFieldSeparatorLine.constraints
        {
            textFieldSeparatorLine.removeConstraint(constraint)
        }
        
        for constraint in textFieldSeparatorLine2.constraints
        {
            textFieldSeparatorLine2.removeConstraint(constraint)
        }
         runJust1 = true
        print("remove all constraint")
    }
  /////////////
    override func viewWillLayoutSubviews() {
        
        let oriantation = UIDevice.current.orientation
        if oriantation.isLandscape {
            print("Landscape mode")
            removeAllScontraints()
            if runJust1 {
                
                SetupUILanscape()
                self.view.needsUpdateConstraints()
                runJust1 = false
            }
        }else if oriantation.isPortrait {
              print("Portrait mode")
          removeAllScontraints()
            if runJust1 {
                
                SetupUIPortrait()
               self.view.needsUpdateConstraints()
                runJust1 = false
            }
        }
        
    }
}
