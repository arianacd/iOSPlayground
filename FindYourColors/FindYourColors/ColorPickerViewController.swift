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
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let colorPickerView = ColorPickerView()
        colorPickerView.onColorDidChange = { [weak self] color in
            DispatchQueue.main.async {

                // use picked color for your needs here...
                self?.view.backgroundColor = color
                
            }
            
            self!.pickerView.addSubview(colorPickerView)
            self!.pickerView.didAddSubview(colorPickerView)

        }

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
