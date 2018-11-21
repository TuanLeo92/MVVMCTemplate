//
//  TeamViewModel.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation
import RxSwift

struct TeamViewModel: TeamViewModelType {
    
    private var team: Team = Team()
    let coordinator: TeamCoordinatorType
    
    init(coordinator: TeamCoordinatorType) {
        self.coordinator = coordinator
    }
    
    func fetchTeamFromLocal() -> Observable<Team> {
        return Observable.just(Team())
    }
    
    func updateTeamLogo(_ logoString: String) {
        
    }
    
    func player() -> Player? {
        return team.players.first
    }
}
