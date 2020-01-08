//
//  AppState.swift
//  colectionViewdemo
//
//  Created by Heimer Nguyen on 1/8/20.
//  Copyright © 2020 Heimer Nguyen. All rights reserved.
//

import UIKit

class AppState {
    static let shared = AppState()
    
    func openHome() {
        guard let appDelegate = UIApplication.shared.delegate, let appWindow = appDelegate.window else { return }
        appWindow?.rootViewController = UINavigationController(rootViewController: ViewController())
    }
}
