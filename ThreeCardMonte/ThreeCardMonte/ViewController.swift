//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randInt = Int.random(in: 0...2)
    var wins = 0
    var losses = 0

    @IBOutlet weak var labelEdit: UILabel!
    
    @IBOutlet weak var scoreboard: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func cardSelect(_ sender: UIButton) {
        
        switch sender.tag {
        case randInt:
            labelEdit.text = "Correct! You win!"
            sender.setBackgroundImage(UIImage.init(named: "kingCard"), for: .normal)
            wins += 1
            for card in cardButtons {
            card.isEnabled = false
            }
            
        default:
            labelEdit.text = "Wrong! You lose!"
            sender.setBackgroundImage(UIImage.init(named: "threeCard"), for: .normal)
            losses += 1
            for card in cardButtons {
                card.isEnabled = false
                if card.tag == randInt {
                    card.setBackgroundImage(UIImage.init(named: "kingCard"), for: .normal)
                }
            }
            }
    }
  
    @IBAction func newGame(_ sender: UIButton) {
        for card in cardButtons {
            card.isEnabled = true
            card.setBackgroundImage(UIImage.init(named: "cardBackRed"), for: .normal)
        }
        scoreboard.text = "Wins:\(wins)|Losses:\(losses)"
        randInt = Int.random(in: 0...2)
        labelEdit.text = "Pick a card, any card!"
        
    }
    
}

