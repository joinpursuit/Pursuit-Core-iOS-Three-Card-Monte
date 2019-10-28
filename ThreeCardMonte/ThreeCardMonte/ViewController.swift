//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game = ThreeCardMonte()
    @IBAction func cardOne(_ sender: UIButton) {
        if game.cardsFlipped == false {
            cardOne.setImage(UIImage(named: game.cards[0].rawValue), for: .normal)
            if game.cards[0].rawValue == "kingCard" {
                gameStatus.text = "You Win"
            } else {
                gameStatus.text = "You Lose, better luck next time"
                middleCard.setImage(UIImage(named: game.cards[1].rawValue), for: .normal)
                cardThree.setImage(UIImage(named: game.cards[2].rawValue), for: .normal)
            }
        }
        
        game.cardsFlipped = true
    }
    
    @IBOutlet weak var cardOne: UIButton!
    @IBOutlet weak var middleCard: UIButton!
    @IBOutlet weak var cardThree: UIButton!
    
    @IBAction func middleCard(_ sender: UIButton) {
        if game.cardsFlipped == false {
            middleCard.setImage(UIImage(named: game.cards[1].rawValue), for: .normal)
            if game.cards[1].rawValue == "kingCard" {
                gameStatus.text = "You Win"
            } else {
                gameStatus.text = "You Lose, better luck next time"
                cardOne.setImage(UIImage(named: game.cards[0].rawValue), for: .normal)
                cardThree.setImage(UIImage(named: game.cards[2].rawValue), for: .normal)
            }
            
        }
        
        game.cardsFlipped = true
    }
    
    @IBAction func cardThree(_ sender: UIButton) {
        if game.cardsFlipped == false {
            cardThree.setImage(UIImage(named: game.cards[2].rawValue), for: .normal)
            if game.cards[2].rawValue == "kingCard" {
                gameStatus.text = "You Win"
            } else {
                gameStatus.text = "You Lose, better luck next time"
                cardOne.setImage(UIImage(named: game.cards[0].rawValue), for: .normal)
                middleCard.setImage(UIImage(named: game.cards[1].rawValue), for: .normal)
            }
        }
        
        game.cardsFlipped = true
    }
    
    @IBOutlet weak var gameStatus: UILabel!
    
    @IBAction func newGame(_ sender: UIButton) {
        gameStatus.text = ""
        cardOne.setImage(UIImage(named: "cardBackRed"), for: .normal)
        middleCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
        cardThree.setImage(UIImage(named: "cardBackRed"), for: .normal)
        game.cardsFlipped = false
        game.cardShuffle()
    }
    
    @IBOutlet weak var newGame: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorners()
        cardOne.setImage(UIImage(named: "cardBackRed"), for: .normal)
        middleCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
        cardThree.setImage(UIImage(named: "cardBackRed"), for: .normal)
        
    }
    
    func roundedCorners() {
        cardOne.layer.cornerRadius = 5.0
        gameStatus.layer.cornerRadius = 5.0
        gameStatus.layer.masksToBounds = true
        cardOne.layer.masksToBounds = true
        cardThree.layer.cornerRadius = 5.0
        cardThree.layer.masksToBounds = true
        middleCard.layer.cornerRadius = 5.0
        middleCard.layer.masksToBounds = true
        newGame.layer.cornerRadius = 5.0
        newGame.layer.masksToBounds = true
    }
    
    
    
    
}

