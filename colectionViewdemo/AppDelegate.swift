//
//  AppDelegate.swift
//  colectionViewdemo
//
//  Created by Heimer Nguyen on 1/8/20.
//  Copyright © 2020 Heimer Nguyen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        AppState.shared.openHome()
        return true
    }

}

