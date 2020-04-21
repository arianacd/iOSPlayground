//
//  ViewController.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/7/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var name: String = ""
       var newPalette: String = ""
       var colors = [UIColor]()
    
    @IBOutlet weak var paletteName: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cancel(segue:UIStoryboardSegue) {
    }
}

