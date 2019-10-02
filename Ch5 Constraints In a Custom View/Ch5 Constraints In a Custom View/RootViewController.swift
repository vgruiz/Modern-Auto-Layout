//
//  RootViewController.swift
//  Ch5 Constraints In a Custom View
//
//  Created by Victor Ruiz on 9/24/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private let stopGoView: StopGoView = {
        let view = StopGoView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        // Do any additional setup after loading the view.
    }

    private func setupView() {
        view.backgroundColor = .green
        view.addSubview(stopGoView)
        
        NSLayoutConstraint.activate([
            stopGoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stopGoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stopGoView.topAnchor.constraint(equalTo: view.topAnchor),
            stopGoView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
