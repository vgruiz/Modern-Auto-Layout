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
    let tileViewPadding: CGFloat = 25.0
    
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
        
        //view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: padding, leading: padding, bottom: padding, trailing: padding)
        if #available(iOS 11, *) {
            tileView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: tileViewPadding, leading: tileViewPadding, bottom: tileViewPadding, trailing: tileViewPadding)
        } else {
            tileView.layoutMargins = UIEdgeInsets(top: tileViewPadding, left: tileViewPadding, bottom: tileViewPadding, right: tileViewPadding)
        }
        
        NSLayoutConstraint.activate([
            tileView.leadingAnchor.constraint(equalTo: safeLeadingAnchor, constant: padding),
            tileView.topAnchor.constraint(equalTo: safeTopAnchor, constant: padding),
            safeTrailingAnchor.constraint(equalTo: tileView.trailingAnchor, constant: padding),
            tileView.heightAnchor.constraint(equalTo: safeHeightAnchor, multiplier: 0.25)
        ])
        
    }


}

extension UIViewController {
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.topAnchor
        } else {
            return topLayoutGuide.bottomAnchor
        }
    }
    
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.bottomAnchor
        } else {
            return bottomLayoutGuide.topAnchor
        }
    }
    
    var safeLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.leadingAnchor
        } else {
            return view.leadingAnchor
        }
    }
    
    var safeTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.trailingAnchor
        } else {
            return view.trailingAnchor
        }
    }
    
    var safeHeightAnchor: NSLayoutDimension {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide.heightAnchor
        } else {
            return view.heightAnchor
        }
    }
}
