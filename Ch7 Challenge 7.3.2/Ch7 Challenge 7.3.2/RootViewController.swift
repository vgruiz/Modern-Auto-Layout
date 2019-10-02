//
//  ViewController.swift
//  Ch7 Challenge 7.3.2
//
//  Created by Victor Ruiz on 9/30/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(printGreenDim), userInfo: nil, repeats: true)
    }

    @objc private func printGreenDim() {
        print(greenView.frame.width, greenView.frame.height)
    }
    
    private func setupView() {
        view.addSubview(greenView)
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let leadingConstraint = greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        leadingConstraint.priority = .defaultLow
        
        NSLayoutConstraint.activate([
            //aspect ratio 1:1
            greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 1.0),
            
            //position
            greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            //keeping greenView on screen
            greenView.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: 1.0),
            greenView.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor, multiplier: 1.0),
            leadingConstraint
        ])
    }
}

