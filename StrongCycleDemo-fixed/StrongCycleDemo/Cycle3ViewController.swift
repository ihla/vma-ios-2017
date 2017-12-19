//
//  Cycle3ViewController.swift
//  StrongCycleDemo
//
//  Created by Lubos Ilcik on 24/10/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

class Cycle3ViewController: TestViewController {

    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Cycle 3"
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(Cycle3ViewController.update), userInfo: nil, repeats: true)

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        timer?.invalidate()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("Cycle3ViewController init \(instanceNumber)")
    }
    
    deinit {
        print("Cycle3ViewController deinit \(instanceNumber)")
    }
    
    func handleWillResignActiveNotification() {
        print("Cycle3ViewController handleWillResignActiveNotification \(instanceNumber)")
    }

    func update() {
        print("Cycle3ViewController update \(instanceNumber)")
    }
  }
