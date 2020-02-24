//
//  ViewController.swift
//  Login Lab
//
//  Created by Ariana on 2/21/20.
//  Copyright © 2020 Ariana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgetPassword: UIButton!
    @IBOutlet weak var forgetUserName: UIButton!
    @IBOutlet weak var username: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
        guard let sender = sender as? UIButton else {return}
        if sender == forgetPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgetUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: forgetPassword)
    }
    @IBAction func forgetUserNameTapped(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: forgetUserName)
    }
    
}

