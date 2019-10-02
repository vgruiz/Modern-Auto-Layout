//
//  ViewController.swift
//  Ch7 Challenge 7.1.2
//
//  Created by Victor Ruiz on 9/29/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

@IBDesignable
class RootViewController: UIViewController {

    var authorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "William Shakespear"
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.numberOfLines = 0
        label.textColor = .black
        label.backgroundColor = .yellow
        return label
    }()
    
    var quoteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "To be, or not to be, that is the question"
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = .purple
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        printDimensions()
        let timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(printDimensions), userInfo: nil, repeats: true)
    }
    
    @objc private func printDimensions() {
        print(authorLabel.frame.width)
        print(quoteLabel.frame.width)
    }
    
    private func setupView() {
        view.addSubview(authorLabel)
        view.addSubview(quoteLabel)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        let quoteWidthConstraint = quoteLabel.widthAnchor.constraint(equalTo: authorLabel.widthAnchor, multiplier: 2.0)
        quoteWidthConstraint.priority = .defaultLow
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            //constraining the labels to the top, leading, and trailing anchors
            authorLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            authorLabel.topAnchor.constraint(equalTo: margins.topAnchor),
            margins.trailingAnchor.constraint(equalTo: quoteLabel.trailingAnchor),
            quoteLabel.topAnchor.constraint(equalTo: margins.topAnchor),
            
            //standard width between labels
            quoteLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: authorLabel.trailingAnchor, multiplier: 1.0),
            
            //author label width
            authorLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 160.0),
            quoteWidthConstraint
        ])
        
    }
}

