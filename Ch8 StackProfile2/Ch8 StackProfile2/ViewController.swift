//
//  ViewController.swift
//  Ch8 StackProfile2
//
//  Created by Victor Ruiz on 9/30/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

//@IBDesignable
class ViewController: UIViewController {

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Victor poo pants"
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultLow + 1, for: .vertical)
        return label
    }()
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .top
        imageView.setContentHuggingPriority(.defaultLow + 1, for: .horizontal)
        //imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 60, height: 60))
        imageView.image = UIImage(named: "placeholder")
        return imageView
    }()
    
    private let bioLabel: UILabel = {
        let label = UILabel()
        label.text = "bitchass bio label"
        label.font = UIFont.systemFont(ofSize: 17.0)
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, bioLabel])
        stackView.axis = .vertical
        stackView.spacing = UIStackView.spacingUseSystem
        return stackView
    }()

    private lazy var profileStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [profileImageView, labelStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = UIStackView.spacingUseSystem
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    
    private func setupView() {
        view.addSubview(profileStackView)
        view.backgroundColor = .systemTeal
        //navigationController?.view.backgroundColor = .blue
        
        let margin = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            profileStackView.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            profileStackView.topAnchor.constraint(equalTo: margin.topAnchor),
            margin.trailingAnchor.constraint(equalTo: profileStackView.trailingAnchor)
        ])
    }


}

