//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Christopher Lee on 15/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import UIKit

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    
    init(text: String = "", checked: Bool = false) {
        self.text = text
        self.checked = checked
    }
    
    func toggleChecked() {
        checked = !checked
    }
}

