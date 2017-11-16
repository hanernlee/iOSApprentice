//
//  Checklist.swift
//  Checklists
//
//  Created by Christopher Lee on 16/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import UIKit

class Checklist: NSObject {
    var name = ""
    
    init(name : String) {
        self.name = name
        super.init()
    }
}
