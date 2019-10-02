//
//  NestedView.swift
//  Ch 6 Margins3
//
//  Created by Victor Ruiz on 9/26/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class NestedView: UIView {

    var nestedColor: UIColor = .green {
        didSet {
            nestedView.backgroundColor = nestedColor
        }
    }
    
    private lazy var nestedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = nestedColor
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(nestedView)
        
        let guide = layoutMarginsGuide
        NSLayoutConstraint.activate([
            nestedView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            nestedView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            nestedView.topAnchor.constraint(equalTo: guide.topAnchor),
            nestedView.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
    }
}
