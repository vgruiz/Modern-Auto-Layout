//
//  RootViewController.swift
//  Ch5 Constraints
//
//  Created by Victor Ruiz on 9/23/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    
    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(redView)
        view.addSubview(greenView)
  
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            
            view.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: padding),
            view.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: padding),
            
            redView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing),
            view.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: padding),
            
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
            
        ])
        
//        let views = [
//            "redView" : redView,
//            "greenView": greenView
//        ]
//
//        let metrics = [
//            "padding" : 50.0,
//            "spacing" : 25.0
//        ]
        
//        let hRedConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(padding)-[redView]-(padding)-|", options: [], metrics: metrics, views: views)
//        let hGreenConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(padding)-[greenView]-(padding)-|", options: [], metrics: metrics, views: views)
//
//        let vConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(padding)-[redView(==greenView)]-(spacing)-[greenView]-(padding)-|", options: [], metrics: metrics, views: views)
//
//        let constraints = hRedConstraints + hGreenConstraints + vConstraints
//        NSLayoutConstraint.activate(constraints)
        
//        NSLayoutConstraint.activate([
//            NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: padding),
//            NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: redView, attribute: .trailing, multiplier: 1.0, constant: padding),
//            NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: padding),
//            NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1.0, constant: padding)
//        ])
    }
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
