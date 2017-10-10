//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Lubos Ilcik on 10/10/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    /*
     property displayLabel je typu "optional" a je inicializovaná na nil (by default)
     ak by nebola optional, outlet by musel byť nastavený cez inicializátor UIViewController, no tak to nefunguje
     funguje to tak, že najskôr sa inštanciuje kontroler, a až potom sa nastavia jeho outlets - počas krátkeho času po inicializácii kontrolera sú outlets nil!
     ten výkričník na konci znamená implicitly unwrapped optional - to je len pre naše pohodlie, aby sme nemuseli používať if-let resp. guard-let
     ale pozor, ak by sme použili tento outlet keď je ešte nil, tak app crashne!!!
     didSet sa však zavolá až potom, čo outlet je nastavený, takže je to bezpečné miesto na nastavenie init hodnoty
     */
    @IBOutlet weak var displayLabel: UILabel! {
        didSet {
            displayLabel.text = "0"
        }
    }
    
    /*
     príklad použitia computed property na prevod medzi Int a String
     displayValue je int-reprezentácia textu v displayLabel
     (question ? answer 1 : answer 2) je ternary operátor
     optional možno testovať na nil
     keďže displayLabel.text je tiež optional, možno priradiť nil hodnotu (nil možno v Swifte priradiť len optional premennej!)
     */
    var displayValue: Int? {
        get {
            return displayLabel.text != nil ? Int(displayLabel.text!) : nil
        }
        set {
            displayLabel.text = newValue != nil ? String(newValue!) : nil
        }
    }
    
    @IBAction func onDigitPressed(_ sender: UIButton) {
        
        /*
         sender.currentTitle je takisto optional (ak button nemá nastavený title, take je nil - vyskúšaj!)
         nižšie je bezpečný spôsob ako "rozbaliť" optional
         funguje to tak, že ak je sender.currentTitle, tak sa telo za if-let nevykoná
         ak je však rôzne od nil, hodnota sa priradí ľavej strane výrazu a pokračuje sa telom
         v tele potom možno použiť dočasnú premennú digit, ktorá už nie je optional
         */
        if let digit = sender.currentTitle {
            print("onDigitPressed: \(digit)")
            displayLabel.text = digit
        }
        
    }
    
    @IBAction func onOperationPressed(_ sender: UIButton) {
        /*
         guard-let je alternatívou k if-let
         funguje s opačnou logikou - vyskúšaj!
         */
        guard let operation = sender.currentTitle else { return }
        print("onOperationPressed: \(operation)")
    }
    
    @IBAction func onEqualPressed(_ sender: UIButton) {
        print("onEqualPressed")
        displayValue = 0
    }
    
}
