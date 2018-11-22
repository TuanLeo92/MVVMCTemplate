//
//  PlayerCoordinator.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation
import UIKit

struct PlayerCoordinator: PlayerCoordinatorType {    
    
    private let navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let playerVC = PlayerViewController(nibName: "PlayerViewController", bundle: nil)
        let viewModel = PlayerViewModel()
        playerVC.bindViewModelAndCoordinator(model: viewModel, andCoordinator: self)
        
        navigation.pushViewController(playerVC, animated: true)
    }
    
    func finish() {
        navigation.popViewController(animated: true)
    }
}
