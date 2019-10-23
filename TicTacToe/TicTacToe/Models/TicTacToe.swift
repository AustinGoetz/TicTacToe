//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by Travis Wheeler on 10/23/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import Foundation

enum Player: String {
    case empty
    case x = "X"
    case o = "O"
}

class TicTacToe {
    var board: [[Player]] = [[.empty, .empty, .empty],
                             [.empty, .empty, .empty],
                             [.empty, .empty, .empty]]
    
    var currentPlayer: Player = .x
}
