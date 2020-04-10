//
//  NewPaletteViewController.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/9/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import UIKit

class NewPaletteViewController: UIViewController {
    
    @IBOutlet weak var paletteContents: UITextView!
       var paletteItem: Palette?
       override func viewDidLoad() {
          super.viewDidLoad()
                 if let paletteItem = paletteItem {
                     navigationItem.title = paletteItem.name
 

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
