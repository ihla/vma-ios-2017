//
//  Cycle4ViewController.swift
//  StrongCycleDemo
//
//  Created by Lubos Ilcik on 24/10/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import UIKit

class Cycle4ViewController: TestViewController {

    lazy var passwordAlertController: UIAlertController = {
        let ctrl = UIAlertController(title: "Enter Password", message: "You have selected to enter your passwod.", preferredStyle: UIAlertControllerStyle.alert)
        ctrl.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
        ctrl.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { [weak self] (action) -> Void in
            
            if let uwTextFields = self?.passwordAlertController.textFields {
                let textField:UITextField = uwTextFields[0] as UITextField
                print(textField.text ?? "")
            }
        }))
        ctrl.addTextField(configurationHandler: {(textField: UITextField!) in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        })
        return ctrl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Cycle 4"
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        present(passwordAlertController, animated: true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        passwordAlertController.dismiss(animated: false, completion: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("Cycle4ViewController init \(instanceNumber)")
    }
    
    deinit {
        print("Cycle4ViewController deinit \(instanceNumber)")
    }

}
