//
//  NewPaletteViewController.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/9/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import UIKit

class NewPaletteViewController: UIViewController {
    
    @IBOutlet var colorviews: [UIView]!
    
    var name: String = ""
    
       @IBOutlet weak var paletteName: UITextField!
    
    @IBOutlet weak var paletteContents: UITextView!
    var paletteEntry: Palette?
    override func viewDidLoad() {
        super.viewDidLoad()
                if let paletteEntry = paletteEntry {
                    navigationItem.title = paletteEntry.name
                    paletteContents.text = paletteEntry.name
                    
                    
 

        // Do any additional setup after loading the view.
    }
        setViewColors()
}
    
    @IBAction func cancel(_ sender: Any) {
    }
    
    
    @IBAction func done(_ sender: Any) {
    }
    
    
    
    func setViewColors() {
        let numColors: Int = paletteEntry!.colors.count
        for x in 0..<numColors {
            colorviews[x].backgroundColor = paletteEntry?.colors[x]
            
        }
        
            
            //view.backgroundColor = color
            
            //set the color of a view
            
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

