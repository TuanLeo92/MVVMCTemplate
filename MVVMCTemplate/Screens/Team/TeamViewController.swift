//
//  TeamViewController.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController {

    var viewModel: TeamViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func goToPlayerAction(_ sender: UIButton) {
        guard let player = viewModel.player() else {
            return
        }
        viewModel.coordinator.goToPlayerScreen(player)
    }
}
