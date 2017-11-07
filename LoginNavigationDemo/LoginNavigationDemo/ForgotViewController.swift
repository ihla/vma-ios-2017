//
//  ForgotViewController.swift
//  LoginNavigationDemo
//
//  Created by Lubos Ilcik on 05/11/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

class ForgotViewController: UIViewController {

    var text = ""

    @IBOutlet private weak var label: UILabel! {
        didSet {
            label.text = text
        }
    }
}
