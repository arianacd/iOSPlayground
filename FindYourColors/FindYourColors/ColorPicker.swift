//
//  ColorPicker.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/22/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import Foundation

class ViewController: UIViewController, ColorPickerViewDelegate {

   
    @IBOutlet weak var colorPicker: ColorPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set delegate of color picker
        colorPicker.delegate = self
    }

    func colorPickerDidSelectColor(_ colorPicker: ColorPickerView) {
      // Can get the selected color from the color picker
      let color = colorPicker.selectedColor
    }
}


