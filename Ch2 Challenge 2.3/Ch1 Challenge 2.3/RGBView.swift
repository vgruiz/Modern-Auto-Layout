//
//  RGBView.swift
//  Ch1 Challenge 2.3
//
//  Created by Victor Ruiz on 9/18/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

@IBDesignable
class RGBView: UIView {
    
    @IBInspectable let spacing : CGFloat = 20.0

    private let redView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
    private let greenView : UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
    private let blueView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        addSubview(redView)
        addSubview(greenView)
        addSubview(blueView)
    }
    
    override func layoutSubviews() {
        let subviewHeight = (frame.height - (2*spacing)) / 3
        
        redView.frame = CGRect(x: 0, y: 0, width: frame.width, height: subviewHeight)
        greenView.frame = CGRect(x: 0, y: subviewHeight + spacing , width: frame.width, height: subviewHeight)
        blueView.frame = CGRect(x: 0, y: subviewHeight * 2 + spacing * 2, width: frame.width, height: subviewHeight)
    }

}
