//
//  ViewController.swift
//  Ch4 Challenge 4.4
//
//  Created by Victor Ruiz on 9/23/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var buttonYConstraint: NSLayoutConstraint!
    @IBAction func startButtonPressed(_ sender: Any) {
        buttonYConstraint.constant = 0
    }
    
}

