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
    
    var addedPalette: Palette?
    var newColor: UIColor?
    var paletteEntry: Palette?

    
    @IBOutlet weak var paletteName: UITextField!

    @IBOutlet var chosenColors: [UIView]!
    
    var delegate: PaletteDelegate?
    
    
    
    @IBOutlet weak var chosenColor: UIView!
    
    @IBOutlet weak var pickerView: UIView!
    
    var currentPosition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let colorPickerView = ColorPickerView(frame: CGRect(x: 0, y: 0, width: 240, height: 193))
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
    


    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addColor(_ sender: UIButton) {
        // add the selected color the array
        colors.append((newColor)!)
        chosenColors[currentPosition].backgroundColor = newColor
        currentPosition += 1
    }
    @IBAction func done(_ sender: UIBarButtonItem) {
        delegate?.addNewPalette(palette: Palette(name: paletteName.text!, colors: colors ))
        dismiss(animated: true, completion: nil)
    }


    @IBAction func undo(_ sender: UIButton) {
        currentPosition -= 1
        currentPosition.backgroundColor == lightGray
        
        
    }
    

    
//func showColors() {
//    let numColors: Int = newPalette.chosenColors.count
//    for x in 0..<numColors {
//        chosenColors[x].backgroundColor = newPalette.chosenColors[x]
//
////    }
////}

}

