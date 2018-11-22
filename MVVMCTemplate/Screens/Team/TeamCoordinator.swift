//
//  TeamCoordinator.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation
import UIKit

struct TeamCoordinator: TeamCoordinatorType {

    private let window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        let teamVC = TeamViewController(nibName: "TeamViewController", bundle: nil)
        let teamModel = TeamViewModel()
        teamVC.bindViewModelAndCoordinator(model: teamModel, andCoordinator: self)
        
        let roootNavigation = UINavigationController(rootViewController: teamVC)
        window?.rootViewController = roootNavigation
    }
    
    func finish() {
        
    }
    
    func goToPlayerScreen(_ player: Player) {
        guard let roootNavigation = window?.rootViewController as? UINavigationController else {
            return
        }
        let playerCoordinator = PlayerCoordinator(navigation: roootNavigation)
        playerCoordinator.start()
    }
    
}
