//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var cardOne: UIButton!
    @IBOutlet weak var cardTwo: UIButton!
    @IBOutlet weak var cardThree: UIButton!
    
    lazy var cards: [UIButton] = [cardOne, cardTwo, cardThree]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func chooseCard(_ sender: UIButton) {
        let winningNum = Int.random(in: 0...2)
        if sender.tag == winningNum {
            displayLabel.text = "You won!"
            sender.setBackgroundImage(UIImage(named: "kingCard"), for: .disabled)
        } else {
            displayLabel.text = "You lost!"
            sender.setBackgroundImage(UIImage(named: "threeCard"), for: .disabled)
            cards[winningNum].setBackgroundImage(UIImage(named: "kingCard"), for: .disabled)
        }
//        switch sender.tag {
//        case 0:
//            displayLabel.text = "You lost!"
//        case 1:
//            displayLabel.text = "You lost!"
//        case 2:
//            displayLabel.text = "You won!"
//        default:
//            displayLabel.text = "What did you do?!"
//        }
        for card in cards {
            card.isEnabled = false
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        displayLabel.text = "Pick a card"
        for card in cards {
            card.isEnabled = true
            card.setBackgroundImage(UIImage(named: "redCard"), for: .disabled)
        }
    }
    
}

