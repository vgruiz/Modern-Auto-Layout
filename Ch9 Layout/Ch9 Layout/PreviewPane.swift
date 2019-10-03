//
//  PreviewPane.swift
//  Ch9 Layout
//
//  Created by Victor Ruiz on 10/2/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class PreviewPane: UIView {

    var spacing: CGFloat = 16.0 {
        didSet {
            stackView.spacing = spacing
        }
    }
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = spacing
        stackView.alignment = .center
        return stackView
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
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
        ])
    }
    
    private var overflow = [UIView]()
    
    func show(_ items: [UIView]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        items.forEach {
            stackView.addArrangedSubview($0)
        }
        
        overflow.removeAll()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        while let nextItem = overflow.first, stackView.bounds.width + spacing + nextItem.intrinsicContentSize.width <= bounds.width {
            stackView.addArrangedSubview(nextItem)
            overflow.remove(at: 0)
            updateConstraintsIfNeeded()
            super.layoutSubviews()
        }
        while stackView.bounds.width > bounds.width, let extraView = stackView.arrangedSubviews.last {
            extraView.removeFromSuperview()
            overflow.insert(extraView, at: 0)
            updateConstraintsIfNeeded()
            super.layoutSubviews()
        }
    }
    
}
