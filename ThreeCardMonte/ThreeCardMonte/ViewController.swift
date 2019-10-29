//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
   private var game = ThreeCardMonte()
    
    @IBAction func cardOne(_ sender: UIButton) {
        if game.cardsFlipped == false {
            if game.cards[0].rawValue == "kingCard" {
                cardOne.setImage(UIImage(named: "kingCard"), for: .normal)
                gameStatus.text = "You Win"
            } else {
                gameStatus.text = "You Lose, better luck next time"
                cardOne.setImage(UIImage(named: "threeCard"), for: .normal)
                
                if game.cards[1].rawValue == "kingCard" {
                    middleCard.setImage(UIImage(named: "kingCard"), for:  .normal)
                } else {
                    cardThree.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
        }
        game.cardsFlipped = true
    }
    
    @IBOutlet weak var cardOne: UIButton!
    @IBOutlet weak var middleCard: UIButton!
    @IBOutlet weak var cardThree: UIButton!
    
    @IBAction func middleCard(_ sender: UIButton) {
        if game.cardsFlipped == false {
            if game.cards[1].rawValue == "kingCard" {
                gameStatus.text = "You Win"
                middleCard.setImage(UIImage(named: "kingCard"), for: .normal)
            } else {
                gameStatus.text = "You Lose, better luck next time"
                middleCard.setImage(UIImage(named: "threeCard"), for: .normal)
                
                if game.cards[0].rawValue == "kingCard" {
                    cardOne.setImage(UIImage(named: "kingCard"), for:  .normal)
                } else {
                    cardThree.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
        }
        game.cardsFlipped = true
    }
    
    @IBAction func cardThree(_ sender: UIButton) {
        if game.cardsFlipped == false {
            if game.cards[2].rawValue == "kingCard" {
                gameStatus.text = "You Win"
                cardThree.setImage(UIImage(named: "kingCard"), for: .normal)
            } else {
                gameStatus.text = "You Lose, better luck next time"
                cardThree.setImage(UIImage(named: "threeCard"), for: .normal)
                
                if game.cards[0].rawValue == "kingCard" {
                    cardOne.setImage(UIImage(named: "kingCard"), for:  .normal)
                } else {
                    middleCard.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
        }
        game.cardsFlipped = true
    }
    
    @IBOutlet weak var gameStatus: UILabel!
    
    @IBAction func newGame(_ sender: UIButton) {
        setInitialImages()
        game.cardsFlipped = false
        game.cardShuffle()
    }
    
    @IBOutlet weak var newGame: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCorners()
        setInitialImages()
    }
    
  private func roundedCorners() {
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
    
  private func setInitialImages() {
        cardOne.setImage(UIImage(named: "cardBackRed"), for: .normal)
        middleCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
        cardThree.setImage(UIImage(named: "cardBackRed"), for: .normal)
        gameStatus.text = "Pick a Card"
    }
}

