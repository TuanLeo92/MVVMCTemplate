//
//  Team.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 19/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation

import Foundation

struct Team {
    
    var name: String
    var logo: String
    var players: [Player]
    
}

extension Team {
    
    init() {
        self.init(name: "",
                  logo: "",
                  players: [])
    }
}

// MARK: - Test
extension Team {
    
    static func test() -> Team {
        return Team(name: "Team 1",
                  logo: "",
                  players: [Player.test()])
    }
}
