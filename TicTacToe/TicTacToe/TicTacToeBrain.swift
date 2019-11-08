//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation



var gameButton = GameButton()



class TicTacToeBrain {
    var gameBoard = [["","",""],
                     ["","",""],
                     ["","",""]]
    var victory1 = false
    var victory2 = false
    var tie = false
    var playerTurn = false
    var turnCount = 0
    func insertAtCoord (_ gameButton: GameButton) {
        if playerTurn  {
            gameBoard[gameButton.row][gameButton.col] = "x"
            turnCount += 1
        } else {
            gameBoard[gameButton.row][gameButton.col] = "o"
            turnCount += 1
        }
    }
    
    
    func winConditions () {
        for row in gameBoard {
            if row == ["x","x","x"] {
                victory1 = true
                break
            } else if row == ["o","o","o"] {
                victory2 = true
                break
                
            }
        }
        
        for columnNum in 0...gameBoard[0].count - 1 {
            var column = [String]()
            for rowNum in 0...gameBoard.count - 1 {
                column.append(gameBoard[rowNum][columnNum])
                if column == ["x","x","x"] {
                    victory1 = true
                    break
                } else if column == ["o","o","o"] {
                    victory2 = true
                    break
                }
            }
        }
        var diagonalRight = [String]()
        for value in 0..<gameBoard.count {
            diagonalRight.append(gameBoard[value][value])
            if diagonalRight == ["x","x","x"] {
                victory1 = true
                break
            } else if diagonalRight == ["o","o","o"] {
                victory2 = true
                break
            }
            
            var diagonalLeft = [String]()
            for value in 0..<gameBoard.count {
                diagonalLeft.append(gameBoard[value][gameBoard.count - 1 - value])
                if diagonalLeft == ["x","x","x"] {
                    victory1 = true
                    break
                } else if diagonalLeft == ["o","o","o"] {
                    victory2 = true
                    break
                }
            }
            
        }
        if turnCount == 9 {
            tie = true
        }
        
    }
    func reset() {
        gameBoard = [["","",""],
                     ["","",""],
                     ["","",""]]
        victory1 = false
        victory2 = false
        playerTurn = false
        turnCount = 0
    }
  
    
    
}

