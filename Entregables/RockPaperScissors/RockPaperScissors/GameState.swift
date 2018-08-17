//
//  GameState.swift
//  RockPaperScissors
//
//  Created by Angel Vázquez on 8/17/18.
//  Copyright © 2018 Ernesto Mejia. All rights reserved.
//

import Foundation

enum GameState: CustomStringConvertible{
    case wins,loses,draw
    var description: String {
        switch self {
        case .wins:
            return "Player Wins"
        case .loses:
            return "Player Loses"
        case .draw:
            return "Draw"
        }
    }
}
