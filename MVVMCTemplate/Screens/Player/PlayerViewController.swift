//
//  PlayerViewController.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    var viewModel: PlayerViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK: - Actions
extension PlayerViewController {
    @IBAction private func goBackAction() {
        viewModel.coordinator.finish()
    }
}
