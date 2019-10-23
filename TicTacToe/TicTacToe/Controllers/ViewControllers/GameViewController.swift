//
//  GameViewController.swift
//  TicTacToe
//
//  Created by Austin Goetz on 10/23/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var buttons: [[UIButton]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func createButtons() {
        for _ in 1...3 {
            var column = [UIButton]()
            for _ in 1...3 {
                let button = UIButton()
                column.append(button)
            }
            buttons.append(column)
        }
    }
    
    func cellButtonTapped(_ sender: UIButton) {
        for (rowNum, row) in buttons.enumerated() {
            for (colNum, cellButton) in row.enumerated() {
                if cellButton == sender {
                    
                }
            }
        }
    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: Any) {
    }
    
}
