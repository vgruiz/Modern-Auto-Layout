//
//  NestedView.swift
//  Ch6 Margins2
//
//  Created by Victor Ruiz on 9/25/19.
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
        //Build Views
        addSubview(nestedView)
        
        let guide = layoutMarginsGuide
        NSLayoutConstraint.activate([
            nestedView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            nestedView.topAnchor.constraint(equalTo: guide.topAnchor),
            guide.trailingAnchor.constraint(equalTo: nestedView.trailingAnchor),
            guide.bottomAnchor.constraint(equalTo: nestedView.bottomAnchor)
        ])
        
        //Add Constraints
        
        
    }

}
