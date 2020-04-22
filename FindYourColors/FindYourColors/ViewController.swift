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

    var delegate: PaletteDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cancel(segue:UIStoryboardSegue) {
    }
    @IBAction func done(_ sender: UIBarButtonItem) {
        delegate?.addNewPalette(palette: Palette(name: paletteName.text!, colors: [UIColor(red: 0.4, green: 0.3, blue: 0.8, alpha: 1.0)]))
        dismiss(animated: true, completion: nil)
    }
}

