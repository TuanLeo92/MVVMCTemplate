//
//  PlayerViewController.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, BindableVMCType {

    var viewModel: PlayerViewModel!
    var coordinator: PlayerCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(viewModel.debugDescription)
    }
    
    func bindViewModelAndCoordinator() {
        
    }
}

// MARK: - Actions
extension PlayerViewController {
    @IBAction private func goBackAction() {
        coordinator.finish()
    }
}
