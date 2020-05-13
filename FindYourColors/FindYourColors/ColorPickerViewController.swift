//
//  ColorPickerViewController.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/27/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var pickerView: UIView!
        
    
    @IBOutlet weak var chosenColor: UIView!
    
    var newColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let colorPickerView = ColorPickerView(frame: CGRect(x: 0, y: 0, width: 394, height: 475))
        colorPickerView.onColorDidChange = { [weak self] color in
            DispatchQueue.main.async {

                // use picked color for your needs here...
                //self?.view.backgroundColor = color
                
                self?.chosenColor.backgroundColor = color
                self?.newColor = color
                
            }
            // trying to make the color picker appear
          

        }
        pickerView.addSubview(colorPickerView)


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
