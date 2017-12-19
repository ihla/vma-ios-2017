//
//  ViewController.swift
//  StrongCycleDemo
//
//  Created by Lubos Ilcik on 24/10/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Cycle5ViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Cycle5" {
           let vc = segue.destination as! Cycle5ViewController
            vc.delegate = self
        }
    }
    
    func callBack() {
        print("ViewController callBack")
    }
}

