//
//  RootViewController.swift
//  Ch6 Margins2
//
//  Created by Victor Ruiz on 9/25/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private let margin: CGFloat = 50.0
    
    private let nestedView: NestedView = {
        let view = NestedView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.preservesSuperviewLayoutMargins = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        //view.preservesSuperviewLayoutMargins = true
        view.addSubview(nestedView)
        changeNestedMargins(inset: margin)
        
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            nestedView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            nestedView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            nestedView.topAnchor.constraint(equalTo: guide.topAnchor),
            nestedView.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
    }
    
    private func changeNestedMargins(inset: CGFloat) {
        if #available(iOS 11, *) {
            nestedView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
        } else {
            nestedView.layoutMargins = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        }
    }

}
