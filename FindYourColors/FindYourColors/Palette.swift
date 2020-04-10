//
//  Palette.swift
//  FindYourColors
//
//  Created by Ariana Daney on 4/8/20.
//  Copyright © 2020 Ariana Daney. All rights reserved.
//

import Foundation
import UIKit

struct Palette {
    var name: String
    var colors: [UIColor]
    
    mutating func add(color: UIColor){
        //var newColor = UIColor(red: 0.1, green: 0.4, blue: 0.5, alpha: 1.0)
               colors.append(color)
           }
           
       
}
       
    
