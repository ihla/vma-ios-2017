//
//  LoginViewController.swift
//  LoginNavigationDemo
//
//  Created by Lubos Ilcik on 05/11/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

private let segueID = "showLandingPage"

class LoginViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLandingPage" {
            if let destinationVC = (segue.destination as? UINavigationController)?.topViewController as? WelcomeViewController {
                destinationVC.welcomeText = "Welcome and enjoy our content!"
            }
        }
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {}

    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!

    @IBAction func onForgotPressed(_ sender: UIButton) {
        guard let text = sender.currentTitle else { return }
        let targetVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ForgotViewController") as! ForgotViewController
        targetVC.text = text
        show(targetVC, sender: self)
    }
    
    @IBAction func onLoginPressed(_ sender: Any) {
        activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(2)) { [weak self] in
            self?.activityIndicator.stopAnimating()
            self?.performSegue(withIdentifier: segueID, sender: self)
        }
    }
}

