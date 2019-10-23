//
//  TicTacToeController.swift
//  TicTacToe
//
//  Created by Travis Wheeler on 10/23/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import Foundation

class TicTacToeController {
    
    static let shared = TicTacToeController()
    
    func playerAt(row: Int, col: Int) -> String? {
        
        return board[row][col]
    }
}
