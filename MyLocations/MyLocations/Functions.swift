//
//  Functions.swift
//  MyLocations
//
//  Created by Christopher Lee on 20/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
