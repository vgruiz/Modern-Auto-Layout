//
//  ViewController.swift
//  Ch8 Challenge 8.3
//
//  Created by Victor Ruiz on 10/1/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private var codeSwitch: UISwitch = {
        let sw = UISwitch()
        sw.addTarget(self, action: #selector(switchChanged), for: .touchUpInside)
        sw.isOn = false
        sw.backgroundColor = .white
        sw.layer.cornerRadius = sw.frame.height / 2
        return sw
    }()
    
    private let code1: UILabel = UILabel.makeCodeLabel(text: "1A")
    private let code2: UILabel = UILabel.makeCodeLabel(text: "2BX")
    private let code3: UILabel = UILabel.makeCodeLabel(text: "3Z")
    private let blankLabel: UILabel = UILabel.makeCodeLabel(text: "                      ")
    
    private lazy var labelStackView: UIStackView = {
        var stackView = UIStackView(arrangedSubviews: [code1, code2, code3, blankLabel])
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 16.0
        return stackView
    }()
    
    private lazy var rootStackView: UIStackView = {
        var stackView = UIStackView(arrangedSubviews: [codeSwitch, labelStackView])
        stackView.axis = .vertical
        stackView.spacing = 16.0
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        stackView.backgroundColor = .black
        return stackView
    }()
    
//    private let background: UIView = {
//        let view = UIView()
//        view.backgroundColor = .purple
//        view.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
//        return view
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        switchChanged()
    }
    
    private func setupView() {
        //background.addSubview(rootStackView)
        view.addSubview(rootStackView)
//        background.translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let margin = view.layoutMarginsGuide
        //let purpleMargin = background.layoutMarginsGuide
        NSLayoutConstraint.activate([
            //background
            //background.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            //background.topAnchor.constraint(equalTo: margin.topAnchor),
            //margin.trailingAnchor.constraint(equalTo: background.trailingAnchor),
            //margin.bottomAnchor.constraint(equalTo: background.bottomAnchor),
            
            //stackView in background
//            rootStackView.leadingAnchor.constraint(equalTo: purpleMargin.leadingAnchor),
//            rootStackView.topAnchor.constraint(equalTo: purpleMargin.topAnchor),
//            purpleMargin.trailingAnchor.constraint(equalTo: rootStackView.trailingAnchor),
//            purpleMargin.bottomAnchor.constraint(equalTo: rootStackView.bottomAnchor)
            
            rootStackView.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            rootStackView.topAnchor.constraint(equalTo: margin.topAnchor),
            margin.trailingAnchor.constraint(equalTo: rootStackView.trailingAnchor)
        ])
        
    }

    @objc private func switchChanged() {
        //change which labels are visible or hidden
        
        let showCodes = codeSwitch.isOn
        
        if showCodes {
            blankLabel.isHidden = true
            code1.isHidden = false
            code2.isHidden = false
            code3.isHidden = false
            labelStackView.alignment = .center
        } else {
            blankLabel.isHidden = false
            code1.isHidden = true
            code2.isHidden = true
            code3.isHidden = true
            labelStackView.alignment = .fill
            //labelStackView.distribution = .fillProportionally
        }
        
    }
    
}

private extension UILabel {
    static func makeCodeLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 40.0)
        label.backgroundColor = .yellow
        label.textColor = .darkText
        label.textAlignment = .center
        return label
    }
}
