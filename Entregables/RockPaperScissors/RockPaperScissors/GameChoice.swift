//
//  GameChoice.swift
//  RockPaperScissors
//
//  Created by Angel Vázquez on 8/17/18.
//  Copyright © 2018 Ernesto Mejia. All rights reserved.
//

import Foundation
import GameplayKit

enum GameChoice: CustomStringConvertible {
    case rock,paper,scissors
    func didIWin(opponent: GameChoice) -> GameState {
        switch self {
        case .rock:
            if(opponent == .rock){
                return .draw
            }else if (opponent == .paper){
                print("Player loses")
                return .loses
            }else{
                print("Player Wins")
                return .wins
            }
        case .paper:
            if(opponent == .rock){
                print("Player Wins")
                return .wins
            }else if (opponent == .paper){
                return .draw
            }else{
                print("Player loses")
                return .loses
            }
        case .scissors:
            if(opponent == .rock){
                print("Player loses")
                return .loses
            }else if (opponent == .paper){
                print("Player Wins")
                return .wins
            }else{
                return .draw
            }
        }
    }
    
    var description: String {
        switch self {
        case .rock:
            return "👊🏽"
        case .paper:
            return "✋🏽"
        case .scissors:
            return "✌🏽"
        }
    }
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> GameChoice {
    let opponentChoice = randomChoice.nextInt()
    
    if(opponentChoice == 0){
        return .rock
    }else if (opponentChoice == 1) {
        return .paper
    } else {
        return .scissors
    }
}
func playerSign(player : Int) -> GameChoice{
    if(player == 0){
        return .rock
    }else if (player == 1) {
        return .paper
    } else {
        return .scissors
    }
}




