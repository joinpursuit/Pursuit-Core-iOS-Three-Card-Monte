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
        switch sender.tag {
        case 0:
            displayLabel.text = "You lost!"
        case 1:
            displayLabel.text = "You lost!"
        case 2:
            displayLabel.text = "You won!"
        default:
            displayLabel.text = "What did you do?!"
        }
        for card in cards {
            card.isEnabled = false
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        displayLabel.text = "Pick a card"
        for card in cards {
            card.isEnabled = true
        }
    }
    
}

