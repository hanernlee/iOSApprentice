//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Christopher Lee on 15/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
        
    }
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
