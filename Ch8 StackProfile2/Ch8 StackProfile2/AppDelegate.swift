//
//  AppDelegate.swift
//  Ch8 StackProfile2
//
//  Created by Victor Ruiz on 9/30/19.
//  Copyright © 2019 Victor Ruiz. All rights reserved.
//

import UIKit

@UIApplicationMain
 class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        //let vc = ViewController()
        //let rootVC = UINavigationController(rootViewController: vc)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }

}

