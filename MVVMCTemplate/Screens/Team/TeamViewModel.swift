//
//  TeamViewModel.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation

struct TeamViewModel: TeamViewModelType {
    
    struct Input {
        
    }
    
    struct Output {
    
    }
    
    func handle(_ input: Input) -> Output {
        return Output()
    }
    
    private var team: Team = Team.test()
    
    func fetchTeamFromLocal() -> Observable<Team> {
        return Observable.just(Team())
    }
    
    func updateTeamLogo(_ logoString: String) {
        
    }
    
    func player() -> Player? {
        return team.players.first
    }
}
