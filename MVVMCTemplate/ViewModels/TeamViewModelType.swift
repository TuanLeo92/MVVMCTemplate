//
//  TeamViewModelType.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 19/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation

protocol TeamViewModelType: ViewModelType {
    
    func fetchTeamFromLocal() -> Observable<Team>
    func updateTeamLogo(_ logoString: String)
}
