//
//  RootViewController.swift
//  Ch5 Challenge 5.1
//
//  Created by Victor Ruiz on 9/24/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    let redView: UIView = UIView.makeView(color: .red)
    let greenView: UIView = UIView.makeView(color: .green)
    
    let greenPadding: CGFloat = 50.0
    let redPadding: CGFloat = 25.0
    let redHeightMultiplier: CGFloat = 0.2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        //view.topAnchor.constraint(equalTo: view.superview!.topAnchor)
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        
        
        //greenView
        view.addSubview(greenView)
        NSLayoutConstraint.activate([
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: greenPadding),
            //greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: greenPadding),
            view.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: greenPadding),
            greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: greenPadding),
            view.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: greenPadding)
        ])
        
        //redView
        greenView.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.centerYAnchor.constraint(equalTo: redView.superview!.centerYAnchor),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: redHeightMultiplier),
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: redPadding),
            greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: redPadding)
        ])
        
    }

}

extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
