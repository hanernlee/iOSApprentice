//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Christopher Lee on 23/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var childViewControllerForStatusBarStyle: UIViewController? {
        return nil
    }
}
