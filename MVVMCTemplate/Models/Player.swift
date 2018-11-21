//
//  Player.swift
//  MVVMCTemplate
//
//  Created by Le Tuan on 17/11/18.
//  Copyright © 2018 Le Tuan. All rights reserved.
//

import Foundation

struct Player {
    
    var name: String
    var avatar: String
    var address: String
    var birthday: Date
    
}

extension Player {
    
    init() {
        self.init(name: "",
                  avatar: "",
                  address: "",
                  birthday: Date())
    }
}

// MARK: - Test
extension Player {
    
    static func test() -> Player {
       return Player(name: "Team 1",
                  avatar: "",
                  address: "Da Nang",
                  birthday: Date())
    }
}
