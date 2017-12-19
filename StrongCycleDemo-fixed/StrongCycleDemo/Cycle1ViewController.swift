//
//  Cycle1ViewController.swift
//  StrongCycleDemo
//
//  Created by Lubos Ilcik on 24/10/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

class Cycle1ViewController: TestViewController {

    var closure: ()->() = {}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        closure = { [unowned self] in
            self.sayHello()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("Cycle1ViewController init \(instanceNumber)")
    }
    deinit {
        print("Cycle1ViewController deinit \(instanceNumber)")
    }

    func sayHello() {
        print("Cycle1ViewController sayHello()")
    }
}
