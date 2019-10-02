//
//  ViewController.swift
//  Ch7 Priorities2
//
//  Created by Victor Ruiz on 9/29/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private let sunView = UIImageView(named: "Sun", backgroundColor: .orange)
    private let snowView = UIImageView(named: "Snow", backgroundColor: .blue)
    private let captionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This label should be below the tallest of the two images"
        label.font = UIFont.systemFont(ofSize: 32.0)
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(sunView)
        view.addSubview(snowView)
        view.addSubview(captionLabel)
        
        
        let margins = view.layoutMarginsGuide
        let captionTopConstraint = captionLabel.topAnchor.constraint(equalTo: margins.topAnchor)
        captionTopConstraint.priority = .defaultLow
        NSLayoutConstraint.activate([
            sunView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            sunView.topAnchor.constraint(equalTo: margins.topAnchor),
            
            snowView.topAnchor.constraint(equalTo: margins.topAnchor),
            margins.trailingAnchor.constraint(equalTo: snowView.trailingAnchor),
            
            captionLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            margins.trailingAnchor.constraint(equalTo: captionLabel.trailingAnchor),
            
            captionLabel.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: sunView.bottomAnchor, multiplier: 1.0),
            captionLabel.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: snowView.bottomAnchor, multiplier: 1.0),
            captionTopConstraint
        ])
    }
    
}

private extension UIImageView {
    convenience init(named name: String, backgroundColor: UIColor) {
        self.init(image: UIImage(named: name))
        self.backgroundColor = backgroundColor
        translatesAutoresizingMaskIntoConstraints = false
    }
}
