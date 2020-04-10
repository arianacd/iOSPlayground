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
    
       
}
        mutating func add(entry: PaletteItem){
            entries.append(entry)
        }
        func entry(index: Int) -> PaletteItem? {
            if index >= 0 && index < entries.count {
                return entries[index]
            } else {
                return nil
            }
        }
    
