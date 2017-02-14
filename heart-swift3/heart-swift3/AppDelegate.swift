//
//  AppDelegate.swift
//  heart-swift3
//
//  Created by litt1e-p on 2017/2/14.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = EmitterHeartViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

