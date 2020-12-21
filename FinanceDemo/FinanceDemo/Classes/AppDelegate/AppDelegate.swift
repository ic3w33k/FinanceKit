//
//  AppDelegate.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/17.
//

import UIKit
import ReactiveSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tableViewController = RootViewController()
        let rootController = UINavigationController(rootViewController: tableViewController)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootController
        window?.makeKeyAndVisible()
        return true
    }
}

