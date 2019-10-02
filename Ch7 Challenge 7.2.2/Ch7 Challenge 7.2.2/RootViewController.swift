//
//  ViewController.swift
//  Ch7 Challenge 7.2.2
//
//  Created by Victor Ruiz on 9/30/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    var btn: UIButton = {
        let btn = UIButton(type: UIButton.ButtonType.custom)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Share", for: .normal)
        btn.backgroundColor = .yellow
        btn.setTitleColor(.darkText, for: .normal)
        btn.contentEdgeInsets = UIEdgeInsets(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 24.0)
        return btn
    }()
    
    var quote: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "To be, or not to be, that is the question"
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.textColor = .white
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        label.backgroundColor = .purple
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(btn)
        view.addSubview(quote)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            btn.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            btn.topAnchor.constraint(equalTo: guide.topAnchor),
            quote.topAnchor.constraint(equalTo: guide.topAnchor),
            guide.trailingAnchor.constraint(equalTo: quote.trailingAnchor),
            quote.leadingAnchor.constraint(equalToSystemSpacingAfter: btn.trailingAnchor, multiplier: 1.0)
        ])
    }

}

