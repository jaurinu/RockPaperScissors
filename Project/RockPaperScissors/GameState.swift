//
//  GameState.swift
//  RockPaperScissors
//
//  Created by Apple Device 9 on 10/30/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation

var userCountScore = 0
var compCountScore = 0

enum GameState{
    case start
    case win
    case lose
    case draw
    
    func actionGameState() -> String {
        switch self {
        case .start:
            return "Make your move"
        case .win:
            userCountScore = userCountScore+1
            return "You win"
        case .lose:
            compCountScore = compCountScore+1
            print(compCountScore)
            return "You lost"
        case .draw:
            return "It's a draw"
        }
    }
}



