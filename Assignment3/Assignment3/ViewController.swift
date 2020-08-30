//
//  ViewController.swift
//  Assignment3
//
//  Created by Suhaas Choppavarapu on 8/24/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var login: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var displayDataButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        login.text = "LOGIN"
        login.backgroundColor = UIColor.red
        
        userNameLabel.text = "Username :"
        passwordLabel.text = "Password :"
        
        displayDataButton.backgroundColor = UIColor.lightGray
    }
    
    @IBAction func displayData(_ sender: UIButton) {
        
        userNameLabel.text = userNameTextField.text == "" ? "Username :" : userNameTextField.text! + ":"
        passwordLabel.text = passwordTextField.text == "" ? "Password :" : passwordTextField.text! + ":"
        
        userNameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
}

