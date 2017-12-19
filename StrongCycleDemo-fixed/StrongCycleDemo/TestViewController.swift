//
//  TestViewController.swift
//  StrongCycleDemo
//
//  Created by Lubos Ilcik on 24/10/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    // instance counting
    static var instanceCount = 0
    var instanceNumber = 0
    
    // make the VC mem footprint more significant when testing
    var mem = [Int]()
    
    required init?(coder aDecoder: NSCoder) {
        Cycle1ViewController.instanceCount += 1
        instanceNumber = Cycle1ViewController.instanceCount
        
        // make the VC mem footprint more significant when testing
        for _ in 0..<1000000 {
            mem.append(0)
        }
        super.init(coder: aDecoder)
    }
}
