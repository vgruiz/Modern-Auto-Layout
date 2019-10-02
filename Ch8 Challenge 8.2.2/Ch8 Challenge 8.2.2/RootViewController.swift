//
//  ViewController.swift
//  Ch8 Challenge 8.2.2
//
//  Created by Victor Ruiz on 10/1/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    let imageView = UIImageView(image: UIImage(named: "Sun"))
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Share", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24.0)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    lazy var stackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [imageView, button])
        stackView.axis = .vertical
        stackView.spacing = UIStackView.spacingUseSystem
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(stackView)
        imageView.backgroundColor = .orange
        imageView.contentMode = .scaleAspectFit
        
        let margin = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: margin.topAnchor),
            margin.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            margin.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
        ])
    }


}

