//
//  ViewController.swift
//  Ch9 Alignment2
//
//  Created by Victor Ruiz on 10/3/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageView = UIImageView(named: "CrazyShadow", top: 0, left: 0, bottom: 30, right: 30)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(imageView)

}

extension UIImageView {
    convenience init(named name: String, top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        let insets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        let originalImage = UIImage(named: name)
        let insetImage = originalImage?.withAlignmentRectInsets(insets)
        self.init(image: insetImage)
    }
}
