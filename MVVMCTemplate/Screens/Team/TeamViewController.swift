//
//  TeamViewController.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController, BindableVMCType {

    var viewModel: TeamViewModel!
    var coordinator: TeamCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func bindViewModelAndCoordinator() {
        
    }
}

// MARK: - Actions
extension TeamViewController {
    @IBAction private func goToPlayerAction(_ sender: UIButton) {
        guard let player = viewModel.player() else {
            return
        }
        coordinator.goToPlayerScreen(player)
    }
}
