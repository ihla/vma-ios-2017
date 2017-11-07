//
//  WelcomeViewController.swift
//  LoginNavigationDemo
//
//  Created by Lubos Ilcik on 05/11/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    var welcomeText = ""
    
    @IBOutlet private weak var welcomeTextView: UITextView! {
        didSet {
            welcomeTextView.text = welcomeText
        }
    }
    
}
