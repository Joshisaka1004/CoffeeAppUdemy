//
//  ViewController.swift
//  CoffeeAppUdemy
//
//  Created by Joachim Vetter on 28.07.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myoutputLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.layer.cornerRadius = 15.0
    }

    @IBAction func calculateButton(_ sender: Any) {
        if let input = myTextField.text, let doubleInput = Double(input) {
            myoutputLabel.text = "$ \(doubleInput * 3.99)"
        } else if myTextField.text == "" {
            myoutputLabel.text = ""
        } else {
            myoutputLabel.text = "Invalid number!"
        }
    }
    
}

