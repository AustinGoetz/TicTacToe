//
//  GameViewController.swift
//  TicTacToe
//
//  Created by Austin Goetz on 10/23/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    // MARK: - Properties
    
    var buttons = [[UIButton]]()
    
    // MARK: - Outlets
    
    @IBOutlet weak var outerStackView: UIStackView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBoard()
    }
    
    // MARK: - Action
    
    @objc
    func cellButtonTapped(_ sender: UIButton) {
        for (rowNum, row) in buttons.enumerated() {
            for (colNum, cellButton) in row.enumerated() {
                if cellButton == sender {
                    TicTacToeController.shared.placePlayerAt(row: rowNum, col: colNum)
                    updateViews()
                }
            }
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        TicTacToeController.shared.reset()
        updateViews()
    }
    
    // MARK: - Helper Methods
    
    func createBoard() {
        for _ in 1...3 {
            
            let rowStackView = UIStackView()
            rowStackView.axis = .horizontal
            rowStackView.distribution = .fillEqually
            rowStackView.spacing = 1
            
            view.addSubview(rowStackView)
            outerStackView.addArrangedSubview(rowStackView)
            
            var column = [UIButton]()
            for _ in 1...3 {
                let button = UIButton()
                button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
                button.backgroundColor = .white
                button.setTitleColor(.black, for: .normal)
                button.addTarget(self, action: #selector(cellButtonTapped(_:)), for: .touchUpInside)
                
                view.addSubview(button)
                rowStackView.addArrangedSubview(button)
                
                column.append(button)
            }
            buttons.append(column)
        }
    }
    
    func updateViews() {
        for (rowNum, row) in buttons.enumerated() {
            for (colNum, cellButton) in row.enumerated() {
                let playerString = TicTacToeController.shared.game.board[rowNum][colNum].rawValue
                cellButton.setTitle(playerString, for: .normal)
            }
        }
    }
}
