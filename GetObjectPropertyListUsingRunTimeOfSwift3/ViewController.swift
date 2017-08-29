//
//  ViewController.swift
//  GetObjectPropertyListUsingRunTimeOfSwift3
//
//  Created by LiDinggui on 2017/8/29.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let array = Person.propertyList()
        print(array)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

