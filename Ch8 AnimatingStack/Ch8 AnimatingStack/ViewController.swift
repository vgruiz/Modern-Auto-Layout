//
//  ViewController.swift
//  Ch8 AnimatingStack
//
//  Created by Victor Ruiz on 10/1/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var axisSwitch: UISwitch!
    @IBOutlet var imageStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureAxis()
    }

    @IBAction func axisChanged(_ sender: Any) {
        let animator = UIViewPropertyAnimator(duration: 0.5, dampingRatio: 0.5) {
            self.configureAxis()
        }
        animator.startAnimation()
    }

    
    private func configureAxis() {
        imageStackView.axis = axisSwitch.isOn ? .vertical : .horizontal
        if let lastImageView = imageStackView.arrangedSubviews.last {
            lastImageView.isHidden = !axisSwitch.isOn
        }
    }
}


