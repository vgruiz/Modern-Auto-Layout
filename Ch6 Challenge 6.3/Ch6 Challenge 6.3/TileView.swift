//
//  TileView.swift
//  Ch6 Challenge 6.3
//
//  Created by Victor Ruiz on 9/28/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class TileView: UIView {

    let redView: UIView = UIView.makeView(color: .red)
    let blueView: UIView = UIView.makeView(color: .blue)
    let tileViewPadding: CGFloat = 25.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
        
        directionalLayoutMargins = NSDirectionalEdgeInsets(top: tileViewPadding, leading: tileViewPadding, bottom: tileViewPadding, trailing: tileViewPadding)
        
        let guide = layoutMarginsGuide
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            blueView.topAnchor.constraint(equalTo: guide.topAnchor),
            blueView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            
            redView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            redView.topAnchor.constraint(equalTo: guide.topAnchor),
            redView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            
            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 25.0),
            
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor)
        ])
    }
}

extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
