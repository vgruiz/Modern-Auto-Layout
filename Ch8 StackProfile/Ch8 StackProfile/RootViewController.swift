//
//  ViewController.swift
//  Ch8 StackProfile
//
//  Created by Victor Ruiz on 9/30/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = "Victor Gabriel Ruiz"
        bioLabel.text = "He has an uneven tan and daddy issues."
    }


}

