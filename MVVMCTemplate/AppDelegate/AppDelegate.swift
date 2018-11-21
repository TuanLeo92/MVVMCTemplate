//
//  AppDelegate.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 15/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator!

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        initAppCoordinator(window)
        
        return true
    }
    
    private func initAppCoordinator(_ window: UIWindow?) {
        appCoordinator = AppCoordinator(window: window)
        appCoordinator.start()
    }
}
