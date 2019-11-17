//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Apple Device 9 on 10/30/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import GameplayKit

var extended = false
//var randomChoice = Float()

//var highestValue = Int()
//
//func randomNumber (){
//    if extended == false {
//        highestValue = 2
//    }else{
//        highestValue = 4
//    }
//}


//func randomNumber  (){
//    if extended == false {
//        randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
//    }else {
//        GKRandomDistribution(lowestValue: 0, highestValue: 4)
//    }
//}
//let randomChoice = randomNumber().nextInt()

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 4)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    }else if sign == 1 {
        return .paper
    }else if sign == 2 {
        return .scissors
    }else if sign == 3 {
        return .lizard
    }else {
        return .spock
    }
}


enum Sign{
    case rock
    case paper
    case scissors
    case lizard
    case spock
    
    var SignValue: String {
        switch self {
        case .rock:
            return "🤘"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        case .lizard:
            return "🦎"
        case .spock:
            return "🖖"
        }
    }
    
   
    func makeYourMove(sign: Sign) -> GameState {
        switch self {
        case .rock:
            switch sign{
            case .rock: return GameState.draw
            case .paper: return GameState.lose
            case .scissors: return GameState.win
            case .lizard: return GameState.win
            case .spock: return GameState.lose
            }
        case .paper:
            switch sign {
            case .rock: return GameState.win
            case .paper: return GameState.draw
            case .scissors: return GameState.lose
            case .lizard: return GameState.lose
            case .spock: return GameState.win
            }
        case .scissors:
            switch sign {
            case .rock: return GameState.lose
            case .paper: return GameState.win
            case .scissors: return GameState.draw
            case .lizard: return GameState.win
            case .spock: return GameState.lose
            }
        case .lizard:
            switch sign {
            case .rock: return GameState.lose
            case .paper: return GameState.lose
            case .scissors: return GameState.win
            case .lizard: return GameState.draw
            case .spock: return GameState.win
            }
        case .spock:
            switch sign {
            case .rock: return GameState.win
            case .paper: return GameState.lose
            case .scissors: return GameState.win
            case .lizard: return GameState.lose
            case .spock: return GameState.draw
            }
        }
    }
}
