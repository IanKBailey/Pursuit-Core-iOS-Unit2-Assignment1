//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var buttons: [GameButton]!
    @IBOutlet weak var playerTurn: UILabel!
    
    
   var gameBrain = TicTacToeBrain()
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }

    @IBAction func buttonPushed(_ gameButton: GameButton) {
        print("this is \(gameButton.row) row and \(gameButton.col) col ")
        
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .black, scale: .large)
        
        let xmark = UIImage(systemName: "xmark", withConfiguration: config)
        let omark = UIImage(systemName: "circle", withConfiguration: config)
        
        gameBrain.playerTurn.toggle()
        
        if gameBrain.playerTurn {
            gameButton.setImage(xmark, for: .normal)
            gameButton.isEnabled = false
            gameBrain.insertAtCoord(gameButton)
            gameBrain.winConditions()
            if gameBrain.victory1 {
                playerTurn.text = "Player 1 wins"
            }
            
        } else {
            gameButton.setImage(omark, for: .normal)
            gameButton.isEnabled = false
            gameBrain.insertAtCoord(gameButton)
            gameBrain.winConditions()
            if gameBrain.victory2 {
                playerTurn.text = "Player 2 Wins"
            }
        }
        
        
    }
   
    @IBAction func reset(_ sender: UIButton) {
        
        
    }
    
    
    
    
}

