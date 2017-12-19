//
//  Cycle5ViewController.swift
//  StrongCycleDemo
//
//  Created by Lubos Ilcik on 28/10/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

protocol Cycle5ViewControllerDelegate: class {
    func callBack()
}

class Cycle5ViewController: TestViewController {

    weak var delegate: Cycle5ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("Cycle5ViewControllerDelegate viewDidDisappear \(instanceNumber)")
        delegate?.callBack()
        super.viewDidAppear(animated)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("Cycle5ViewControllerDelegate init \(instanceNumber)")
    }
    
    deinit {
        print("Cycle5ViewControllerDelegate deinit \(instanceNumber)")
    }
}
