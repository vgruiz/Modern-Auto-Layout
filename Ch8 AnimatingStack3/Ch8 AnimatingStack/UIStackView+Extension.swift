//
//  UIStackView+Extension.swift
//  Ch8 AnimatingStack
//
//  Created by Victor Ruiz on 10/2/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

public extension UIStackView {
    @discardableResult
    func addUnarrangedView(color: UIColor, radius: CGFloat = 0, at index: Int = 0) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        view.layer.cornerRadius = radius
        insertSubview(view, at: index)
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.topAnchor.constraint(equalTo: topAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        return view
    }
    
    @discardableResult
    func addBackground(color: UIColor, radius: CGFloat = 0) -> UIView {
       return addUnarrangedView(color: color, radius: radius, at: 0)
    }
    
    func addForeground(color: UIColor, radius: CGFloat = 0) -> UIView {
        let index = subviews.count
        return addUnarrangedView(color: color, radius: radius, at: index)
    }
}
