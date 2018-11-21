//
//  AppCoordinator.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: AppCoordinatorType {
    
    var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        guard let window = window else {
            return
        }
        
        let teamCoordinator = TeamCoordinator(window: self.window)
        teamCoordinator.start()
        window.makeKeyAndVisible()
    }
    
    func finish() {
        
    }
    
}
