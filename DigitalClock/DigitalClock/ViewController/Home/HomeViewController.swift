//
//  ViewController.swift
//  DigitalClock
//
//  Created by test on 4/5/19.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    var myTimeLable:UILabel = UILabel()
    var myDateLable:UILabel = UILabel()
    var myTimer:Timer?
    var myIc_timerButton:UIButton = UIButton()
    var myIc_themesButton:UIButton = UIButton()
    var myIc_settingsButton:UIButton = UIButton()
    var myIc_notificationButton:UIButton = UIButton()
    var myOnOffLable:UILabel = UILabel()
    
    //FUNC SETUP myTimer
    func Setup_myTimer()
    {
       
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Tick_myTimer), userInfo: nil, repeats: true)
    }
    ///FUNC Tick_myTimer
    @objc func Tick_myTimer()
    {
       
        GetCurrentTime()
    }
    
    
    //FUNC SETUP myTimeLable
    func Setup_myTimeLable()
    {
        //myTimeLable.font = UIFont(name:"digital-7 Mono", size: 120)
        myTimeLable.text = "Time Here"
        myTimeLable.textColor = .green
        myTimeLable.translatesAutoresizingMaskIntoConstraints = false
        myTimeLable.textAlignment = .center
        //myTimeLable.contentMode = .scaleToFill
        myTimeLable.numberOfLines = 1
       myTimeLable.adjustsFontSizeToFitWidth = true
        myTimeLable.minimumScaleFactor = 0.2
        
        self.view.addSubview(myTimeLable)
        myTimeLable.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myTimeLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myTimeLable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5).isActive = true
        myTimeLable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 5).isActive = true
        myTimeLable.widthAnchor.constraint(equalToConstant: 190).isActive = true
        myTimeLable.heightAnchor.constraint(equalToConstant: 180).isActive = true
    }
    
    //FUNC SETUP myDateLable
    func Setup_myDateLable()
    {
        myDateLable.font = UIFont(name:"arial", size: 30)
        myDateLable.text = "Date here"
        myDateLable.textColor = .green
        myDateLable.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(myDateLable)
        myDateLable.bottomAnchor.constraint(equalTo: myTimeLable.topAnchor, constant: -20).isActive = true
        myDateLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
    
   //FUNC SETUP ic_timer Button
    func SetupIc_timerButton()
    {
        self.view.addSubview(myIc_timerButton)
        myIc_timerButton.setImage(UIImage.init(named: "ic_timer"), for: .normal)
        myIc_timerButton.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(10)
        }
        
    }
    //FUNC SETUP ic_themes Button
    func SetupIc_themesButton()
    {
        self.view.addSubview(myIc_themesButton)
        myIc_themesButton.setImage(UIImage.init(named: "ic_themes"), for: .normal)
        myIc_themesButton.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        
        
    }
    //FUNC SETUP ic_settings Button
    func SetupIc_settingsButton()
    {
        self.view.addSubview(myIc_settingsButton)
        myIc_settingsButton.setImage(UIImage.init(named: "ic_settings"), for: .normal)
        myIc_settingsButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-10)
            make.leading.equalToSuperview().offset(10)
        }
        
        
    }
    //FUNC SETUP ic_notification Button
    func SetupIc_notificationButton()
    {
        self.view.addSubview(myIc_notificationButton)
        myIc_notificationButton.setImage(UIImage.init(named: "ic_notification"), for: .normal)
        myIc_notificationButton.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
        }
        
        
    }
    //FUNC SETUP ic_notification Button
    func SetupMyOnOffLable()
    {
        self.view.addSubview(myOnOffLable)
        myOnOffLable.text = "OFF"
        myOnOffLable.textColor = .green
        myOnOffLable.snp.makeConstraints { (make) in
            make.centerY.equalTo(myIc_settingsButton)
            make.leading.equalTo(myIc_settingsButton.snp.trailing).offset(10)
        }
        
        
    }
    
    //////VIEW DID LOAD///////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .black
        
        Setup_myTimeLable()
        
        Setup_myDateLable()
        
        GetCurrentDate(DateStyle: "EEEE, dd-MM-yyy")
        
        Setup_myTimer()
        
        SetupIc_timerButton()
        SetupIc_themesButton()
        SetupIc_settingsButton()
        SetupIc_notificationButton()
        SetupMyOnOffLable()
        print("END")
    }
    
    /////FUNC get curretn DATE/////
    func GetCurrentDate(DateStyle:String) -> Void {
        
        let Date:NSDate = NSDate()
        let dateFormat:DateFormatter = DateFormatter()
        dateFormat.dateFormat = DateStyle
        myDateLable.text = dateFormat.string(from: Date as Date)
    }
    
    /////FUNC get curretn TIME/////
    func GetCurrentTime() -> Void {
        
        let date = Date()
        let calendar = NSCalendar.current
        let second = calendar.component(.second, from: date)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh"
        let hourString = formatter.string(from: Date())
        
        
       
        formatter.dateFormat = "a"
        let amOrPM = formatter.string(from: Date())
        
        
        formatter.dateFormat = "mm"
        let minuterString = formatter.string(from: Date())
        
        let attributedText = NSMutableAttributedString(string: hourString + ":" + minuterString , attributes: [NSAttributedString.Key.font: UIFont(name:"digital-7 Mono", size: 120)!])
        
        attributedText.append(NSAttributedString(string: ":" + String(second) + " " + amOrPM, attributes: [NSAttributedString.Key.font: UIFont(name:"digital-7 Mono", size: 80)!, NSAttributedString.Key.foregroundColor: UIColor.green]))
        myTimeLable.attributedText = attributedText
        //myTimeLable.text = hourString + ":" + minuterString + ":" + String(second) + " " + amOrPM
    }
    
    
    
    
    
}//end class

