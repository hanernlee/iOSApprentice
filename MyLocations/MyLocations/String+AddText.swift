//
//  String+AddText.swift
//  MyLocations
//
//  Created by Christopher Lee on 22/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
