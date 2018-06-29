//
//  ViewController.swift
//  Log
//
//  Created by lxb on 2018/6/28.
//  Copyright © 2018年 lxb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Log.level = .warning
        Log.tokenStatus()
        Log.requeestWeather()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

