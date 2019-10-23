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
    
    var game = TicTacToe()
    
    func placePlayerAt(row: Int, col: Int) {
        guard game.board[row][col] == .empty else {return}
        game.board[row][col] = game.currentPlayer
        if game.currentPlayer == .x {
            game.currentPlayer = .o
        } else {
            game.currentPlayer = .x
        }
    
    }
        
    func resetButton() {
        game = TicTacToe()
    }
}
