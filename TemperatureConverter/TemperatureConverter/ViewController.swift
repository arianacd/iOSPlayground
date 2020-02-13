//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Ariana on 2/6/20.
//  Copyright © 2020 Ariana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var degreesfahrenheit: UITextField!
    
    @IBOutlet weak var celsiuslabel: UILabel!
    
    
    // (5/9) * (degreesfahrenheit - 32)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }


    @IBAction func calculatebutton(_ sender: Any) {
        let fahrenheit = Double(degreesfahrenheit.text!)
        let celsius = (5/9.0) * (fahrenheit! - 32)
        celsiuslabel.text = String(celsius)
    }
}

