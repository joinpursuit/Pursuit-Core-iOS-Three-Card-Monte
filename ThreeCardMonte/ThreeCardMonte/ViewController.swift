//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cards: [UIButton]!
    @IBOutlet weak var userOptionsPlusOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        for card in cards {
            card.isEnabled = true
            card.setBackgroundImage(nil, for: .disabled)
        }
        userOptionsPlusOutput.text = "Pick a card, any card!"
    }
    
    @IBAction func backCardAction(_ sender: UIButton) {
        cards = cards.shuffled()
        
        cards[0].setBackgroundImage(UIImage(named: "kingCard.jpg"), for: .disabled)
        
        if sender === cards[0] {
            userOptionsPlusOutput.text = "You won!"
        } else {
            sender.setBackgroundImage(UIImage(named: "threeCard.png"), for: .disabled)
            userOptionsPlusOutput.text = "You lose..."
        }
        for card in cards {
            card.isEnabled = false
        }
    }
}

