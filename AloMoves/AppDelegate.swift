//
//  AppDelegate.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        appDidLunch()
        return true
    }

    func appDidLunch(){
        window = UIWindow()
        window?.rootViewController = ChallangeView()
        window?.makeKeyAndVisible()
    }
}

