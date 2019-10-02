//
//  RootViewController.swift
//  Ch1 Challenge 2.2
//
//  Created by Victor Ruiz on 9/18/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private let greenPadding : CGFloat = 50.0
    private let redPadding : CGFloat = 25.0
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
    private let redView: UIView = {
       let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleBottomMargin, .flexibleTopMargin, .flexibleWidth]
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
    }

    override func viewWillLayoutSubviews() {
        if greenView.superview == nil {
            view.addSubview(greenView)
            let greenWidth = view.frame.width - 2 * greenPadding
            let greenHeight = view.frame.height - 2 * greenPadding
            greenView.frame = CGRect(x: greenPadding, y: greenPadding, width: greenWidth, height: greenHeight)
        }
        
        if redView.superview == nil {
            greenView.addSubview(redView)
            let redWidth = greenView.frame.width - 2 * redPadding
            let redHeight : CGFloat = 100
            let redY = greenView.frame.height / 2 - redHeight / 2
            redView.frame = CGRect(x: redPadding, y: redY, width: redWidth, height: redHeight)
        }
        
        
    }
}
