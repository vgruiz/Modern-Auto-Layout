//
//  ViewController.swift
//  Ch6 EqualSpacing2
//
//  Created by Victor Ruiz on 9/27/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "buttonTemplate"), for: .normal)
        button.tintColor = .red
        button.setTitle("Cancel", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30.0)
        button.contentEdgeInsets = UIEdgeInsets(top: 8.0, left: 16.0, bottom: 8.0, right: 16.0)
        button.frame.size = button.titleLabel!.intrinsicContentSize

        //let title = NSLocalizedString("Cancel", comment: "Cancel button")
        //let button = UIButton.customButton(title: title, titleColor: .white, tintColor: .red, background: UIImage(named: "buttonTemplate"))
        return button
    }()
    
    private lazy var okButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setBackgroundImage(UIImage(named: "buttonTemplate"), for: .normal)
//        button.tintColor = .green
//        button.titleLabel?.text = "OK"
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 30.0)
//        button.titleEdgeInsets = UIEdgeInsets(top: 8.0, left: 16.0, bottom: 8.0, right: 16.0)
        let title = NSLocalizedString("OK", comment: "ok button")
        let button = UIButton.customButton(title: title, titleColor: .white, tintColor: .green, background: UIImage(named: "buttonTemplate"))
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.addSubview(cancelButton)
        view.addSubview(okButton)
        
        //Layout Guides
        let leadingGuide = UILayoutGuide()
        let middleGuide = UILayoutGuide()
        let trailingGuide = UILayoutGuide()
        
        //Add
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)
        
        NSLayoutConstraint.activate([
            //horizontal constraints
            view.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
            cancelButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor),
            middleGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor),
            okButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            //vertical constraints
            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            //width anchors
            cancelButton.widthAnchor.constraint(equalTo: okButton.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            trailingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor)
            
        ])
    }


}


extension UIButton {
    static func customButton(title: String, titleColor: UIColor, tintColor: UIColor, background: UIImage?) -> UIButton {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30.0)
        button.setBackgroundImage(background, for: .normal)
        button.tintColor = tintColor
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        return button
    }
}
