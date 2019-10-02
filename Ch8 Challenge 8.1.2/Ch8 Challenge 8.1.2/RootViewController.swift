//
//  ViewController.swift
//  Ch8 Challenge 8.1.2
//
//  Created by Victor Ruiz on 10/1/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    let label: UILabel = {
        let label = UILabel()
        label.text = "Engine Power"
        label.font = UIFont.systemFont(ofSize: 24.0)
        label.textAlignment = .center
        return label
    }()
    
    let lowButton: UIButton = UIButton.makeButton(title: "Low", color: .red)
    let mediumButton: UIButton = UIButton.makeButton(title: "Medium", color: .yellow)
    let highButton: UIButton = UIButton.makeButton(title: "High", color: .green)
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [label, lowButton, mediumButton, highButton])
        stackView.axis = .vertical
        stackView.spacing = UIStackView.spacingUseSystem
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(stackView)
        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: guide.topAnchor),
            guide.trailingAnchor.constraint(equalTo: stackView.trailingAnchor)
        ])
    }

}

private extension UIButton {
    static func makeButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton(type: .custom)
        button.backgroundColor = color
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18.0)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }
}
