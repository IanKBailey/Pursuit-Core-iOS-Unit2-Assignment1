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
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func buttonPushed(_ gameButton: GameButton) {
        print("this is \(gameButton.row) row and \(gameButton.col) and ")
        
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .black, scale: .large)
        
        let xmark = UIImage(systemName: "xmark", withConfiguration: config)
        let omark = UIImage(systemName: "circle", withConfiguration: config)
        
        player1.toggle()
        
        if player1 == true {
            gameButton.setImage(xmark, for: .normal)
            gameButton.isEnabled = false
            gameBrain.insertAtCoord(gameButton)
            print(gameBrain.gameBoard)
        } else {
            gameButton.setImage(omark, for: .normal)
            gameButton.isEnabled = false
            gameBrain.insertAtCoord(gameButton)
            print(gameBrain.gameBoard)
        }
        
        
    }
   
    @IBAction func reset(_ sender: UIButton) {
    }
    
    
    
    
}

