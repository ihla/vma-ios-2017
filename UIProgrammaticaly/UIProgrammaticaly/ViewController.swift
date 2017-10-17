//
//  ViewController.swift
//  UIProgrammaticaly
//
//  Created by Lubos Ilcik on 17/10/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 20, y: 80, width: 0, height: 0))
        label.text = "Hello World!"
        label.sizeToFit()
        
        view.addSubview(label)
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 20, y: 120, width: 0, height: 0)
        button.setTitle("Press Me", for: .normal)
        
        button.addTarget(self, action: #selector(onButtonPress(_:)), for: .touchUpInside)
        
        button.sizeToFit()
        view.addSubview(button)
        
    }

    @objc func onButtonPress(_ sender: UIButton) {
        print("onButtonPress")
    }
}

