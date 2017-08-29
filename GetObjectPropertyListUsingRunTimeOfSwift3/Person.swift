//
//  Person.swift
//  GetObjectPropertyListUsingRunTimeOfSwift3
//
//  Created by LiDinggui on 2017/8/29.
//  Copyright © 2017年 DAQSoft. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String?
    var sex: Bool = true
    var age: Int = 0
    var height: Float = 0.0
    var address: String?
    var job: String?
    
    class func propertyList() -> [String] {
        var outCount: UInt32 = 0
        
        let list = class_copyPropertyList(self, &outCount)
        
        print("Person对象的属性有 \(outCount) 个!")
        
        for i in 0..<Int(outCount) {
//            let p = list![i]
//            let cStr = property_getName(p!)
//            let str = String(utf8String: cStr!)
//            print(str!)
            
            guard let p = list?[i], let cStr = property_getName(p), let str = String(utf8String: cStr) else {
                continue
            }
            
            print(str)
        }
        
        free(list!)
        
        return []
    }
    
}
