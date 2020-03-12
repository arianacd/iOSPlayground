//
//  JournalEntry.swift
//  Journal
//
//  Created by Ariana on 3/6/20.
//  Copyright © 2020 Ariana. All rights reserved.
//

import Foundation

struct JournalEntry: CustomStringConvertible {
    let date: Date
    let contents: String
    let dateFormatter = DateFormatter()
    var description: String {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: date)
    }


}
