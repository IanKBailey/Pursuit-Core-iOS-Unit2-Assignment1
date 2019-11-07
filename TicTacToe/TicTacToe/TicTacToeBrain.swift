//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation


var player1 = true
var gameButton = GameButton()



class TicTacToeBrain {
    var gameBoard = [["","",""],
                     ["","",""],
                     ["","",""]]

    
    func insertAtCoord (_ gameButton: GameButton) {
        if player1 == true {
            gameBoard[gameButton.row][gameButton.col] = "x"
        } else {
             gameBoard[gameButton.row][gameButton.col] = "o"
        }
    }
    
}


