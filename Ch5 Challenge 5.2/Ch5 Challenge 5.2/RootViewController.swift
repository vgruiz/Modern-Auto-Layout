//
//  RootViewController.swift
//  Ch5 Challenge 5.2
//
//  Created by Victor Ruiz on 9/24/19.
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
        tileView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tileView)
        
        NSLayoutConstraint.activate([
            tileView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            tileView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            view.trailingAnchor.constraint(equalTo: tileView.trailingAnchor, constant: padding),
            
            tileView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }

}
