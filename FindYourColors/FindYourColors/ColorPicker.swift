//
//  ColorPicker.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/24/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import Foundation
import UIColorPicker

class ViewController {
  var colorPickerView: ColorPickerView!

  override func viewDidLoad() {
    super.viewDidLoad()

    colorPickerView = ColorPickerView(frame: CGRect(x: 0.0, y: 0.0, width: widthSize, height: heightSize))
    view.addSubview(colorPickerView)
  }

}
