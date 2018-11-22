//
//  ViewModelType.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 19/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation

protocol ViewModelType {
    
    associatedtype Input
    associatedtype Output
        
    func handle(_ input: Input) -> Output
    
}
