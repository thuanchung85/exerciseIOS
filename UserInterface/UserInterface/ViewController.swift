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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SetupUIPortrait()
    }
    
    ///func setup for portrait
    func SetupUIPortrait() {
        let frame = self.view.safeAreaLayoutGuide.layoutFrame
        let heightMax = frame.height
        let widthMax = frame.width
        
        //setup logoImage
        logoImage.image = UIImage(named: "fbLogo@1x")
        logoImage.contentMode = .scaleAspectFit
        logoImage.layer.cornerRadius = 10
        logoImage.layer.masksToBounds = true
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        logoImage.topAnchor.constraint(equalTo: self.view.topAnchor, constant: (heightMax * 10)/100).isActive = true
        
        //setup textfieldUserName
        textfieldUserName.translatesAutoresizingMaskIntoConstraints = false
        textfieldUserName.placeholder = NSAttributedString(string: "Email or phone number", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray]).string
        textfieldUserName.layer.cornerRadius = 10
        textfieldUserName.layer.masksToBounds = true
        textfieldUserName.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        textfieldUserName.layer.borderWidth = 0.5
        textfieldUserName.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldUserName.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 50).isActive = true
        textfieldUserName.widthAnchor.constraint(equalToConstant: (widthMax * 90)/100).isActive = true
        textfieldUserName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //setup textfieldPassword
        textfieldPassword.translatesAutoresizingMaskIntoConstraints = false
        textfieldPassword.placeholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray]).string
        textfieldPassword.isSecureTextEntry = true
        textfieldPassword.layer.cornerRadius = 10
        textfieldPassword.layer.masksToBounds = true
        textfieldPassword.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        textfieldPassword.layer.borderWidth = 0.5
        
        textfieldPassword.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        textfieldPassword.topAnchor.constraint(equalTo: textfieldUserName.bottomAnchor, constant: 10).isActive = true
        textfieldPassword.widthAnchor.constraint(equalTo: textfieldUserName.widthAnchor).isActive = true
        textfieldPassword.heightAnchor.constraint(equalTo: textfieldUserName.heightAnchor).isActive = true
        
        //setup loginButton
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = UIColor(displayP3Red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        loginButton.setTitle("Login", for: .normal)
        loginButton.tintColor = .white
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
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
        createNewAccountButton.layer.cornerRadius = 10
        createNewAccountButton.layer.masksToBounds = true
        createNewAccountButton.layer.borderWidth = 1
        createNewAccountButton.layer.borderColor = UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1).cgColor
        
        //setup orLable
        orLable.translatesAutoresizingMaskIntoConstraints = false
        orLable.text = "OR"
        orLable.textAlignment = .center
        orLable.backgroundColor = .white
        orLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        orLable.bottomAnchor.constraint(equalTo: createNewAccountButton.topAnchor, constant: -10).isActive = true
        orLable.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///make a line
        self.view.addSubview(textFieldSeparatorLine)
        self.view.sendSubviewToBack(textFieldSeparatorLine)
        textFieldSeparatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        textFieldSeparatorLine.widthAnchor.constraint(equalToConstant: 250).isActive = true
        textFieldSeparatorLine.topAnchor.constraint(equalTo: orLable.bottomAnchor, constant: -10).isActive = true
        textFieldSeparatorLine.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        
        ///make a line2
        self.view.addSubview(textFieldSeparatorLine2)
       // self.view.sendSubviewToBack(textFieldSeparatorLine2)
        textFieldSeparatorLine2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        textFieldSeparatorLine2.widthAnchor.constraint(equalToConstant: widthMax*90/100).isActive = true
        textFieldSeparatorLine2.topAnchor.constraint(equalTo: textfieldUserName.bottomAnchor, constant: 4).isActive = true
        textFieldSeparatorLine2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        
    }
    
    
  /////////////
    override func viewWillLayoutSubviews() {
        
        let oriantation = UIDevice.current.orientation
        if oriantation.isLandscape {
            print("Landscape mode")
            
        }else if oriantation.isPortrait {
              print("Portrait mode")
        }
        
    }
}
