//
//  BindableVMCType.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 22/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

protocol BindableVMCType: class {
    
    associatedtype ViewModelType
    associatedtype CoordinatorType
    
    var viewModel: ViewModelType! { set get }
    var coordinator: CoordinatorType! { set get }
    
    func bindViewModelAndCoordinator()
    
}

extension BindableVMCType where Self: UIViewController {
    
    func bindViewModelAndCoordinator(model: Self.ViewModelType, andCoordinator coordinator: Self.CoordinatorType) {
        self.viewModel = model
        self.coordinator = coordinator
        loadViewIfNeeded()
        
        bindViewModelAndCoordinator()
    }
}
