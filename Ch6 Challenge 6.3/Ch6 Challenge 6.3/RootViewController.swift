//
//  ViewController.swift
//  Ch6 Challenge 6.3
//
//  Created by Victor Ruiz on 9/27/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    let tileView = TileView()
    let padding: CGFloat = 50.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tileView)
        tileView.translatesAutoresizingMaskIntoConstraints = false
        
        tileView.backgroundColor = .green
        
        view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: padding, leading: padding, bottom: padding, trailing: padding)
        
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            tileView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            tileView.topAnchor.constraint(equalTo: guide.topAnchor),
            tileView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            
            tileView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.25)
        ])
        
    }


}

