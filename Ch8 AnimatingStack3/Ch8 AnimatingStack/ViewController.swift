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
    @IBOutlet var rootStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
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
    
    private func setupView() {
//        let background = UIView()
//        background.translatesAutoresizingMaskIntoConstraints = false
//        background.backgroundColor = .purple
//        background.layer.cornerRadius = 10.0
//        rootStackView.insertSubview(background, at: 0)
//
//        NSLayoutConstraint.activate([
//            rootStackView.leadingAnchor.constraint(equalTo: background.leadingAnchor),
//            rootStackView.topAnchor.constraint(equalTo: background.topAnchor),
//            background.trailingAnchor.constraint(equalTo: rootStackView.trailingAnchor),
//            background.bottomAnchor.constraint(equalTo: rootStackView.bottomAnchor)
//        ])
        rootStackView.addBackground(color: .purple)
    }
}


