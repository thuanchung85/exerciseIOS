//
//  ViewController.swift
//  SnapkitExercise
//
//  Created by SWEET HOME (^0^)!!! on 5/1/19.
//  Copyright © 2019 LUONG THUAN CHUNG. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    @IBOutlet weak var viewYellow: UIView!
    @IBOutlet weak var viewGray: UIView!
    @IBOutlet weak var viewBlue: UIView!
    @IBOutlet weak var viewRed: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //setup viewRed
        viewRed.translatesAutoresizingMaskIntoConstraints = false
        viewRed.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        //setup viewYellow
        viewYellow.translatesAutoresizingMaskIntoConstraints = false
        viewYellow.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(40)
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.centerX.equalToSuperview()
        }
        
        //setup viewGray
        viewGray.translatesAutoresizingMaskIntoConstraints = false
        viewGray.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom)
            make.trailing.equalTo(view.snp.trailing)
            make.width.equalTo(200)
            make.height.equalTo(100)
        }
        
        //setup viewBlue
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        viewBlue.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom)
            make.leading.equalTo(view.snp.leading)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
    }


}

