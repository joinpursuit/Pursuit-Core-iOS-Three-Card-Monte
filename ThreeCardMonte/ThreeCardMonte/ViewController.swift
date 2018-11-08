//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //outlets
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var card4: UIButton!
    @IBOutlet weak var card5: UIButton!
    
    @IBOutlet weak var gameState: UILabel!
    @IBOutlet weak var winNum: UILabel!
    @IBOutlet weak var loseNum: UILabel!
    
    @IBOutlet weak var resetScore: UIButton!
    @IBOutlet weak var newGame3: UIButton!
    @IBOutlet weak var newGame4: UIButton!
    @IBOutlet weak var newGame5: UIButton!
    
    var cardButtons = [UIButton]()
    var cardImages = [UIImage]()
    let faceDownCard = UIImage.init(named: "cardBackRed")
    
    override func viewDidLoad() { //runs 1 time at the beginning
        super.viewDidLoad()
        cardButtons = [card1, card2, card3, card4, card5]
        cardImages = cardImgGenerator(cardNum: 3).shuffled()
        cardsDisplay(totalCards: 3)
    }
    
    var wins = 0
    var loses = 0

    //actions
    @IBAction func flipCard(_ sender: UIButton) {
        let cardSelect = sender.tag
        //flipCard
        cardButtons[cardSelect].setImage(cardImages[cardSelect], for: .normal)
        
        //Game Result
        let win = gameResult(image: cardImages[cardSelect], gameState: gameState)
        
        //Review King card if the player loses
        if !win { revealKingCard(cards: cardButtons, images: cardImages) }
        
        //update score
        scoreTrack(result: win)
        
        disableOrEnableButtons(buttons: cardButtons, enabled: false)
    }

    //Reset Game When "New Game" is tapped
    @IBAction func resetGameClick(_ sender: UIButton) {
        let cardNum = sender.tag
        
        cardImages = cardImgGenerator(cardNum: cardNum).shuffled()
        gameState.text = "Pick A Card 🤚🏽"
        disableOrEnableButtons(buttons: cardButtons, enabled: true)
        cardsDisplay(totalCards: cardNum)
        for card in cardButtons {
            card.setImage(faceDownCard, for: .normal)
        }
    }


    @IBAction func resetScore(_ sender: Any) {
        wins = 0
        winNum.text = "Wins: \(wins)"
        
        loses = 0
        loseNum.text = "Loses: \(loses)"
    }
    
    
    //gameplay methods
    func gameResult(image: UIImage, gameState: UILabel) -> Bool {
        if image == UIImage.init(named: "kingCard") {
            gameState.text = "You Win! 😄"
            return true
        } else {
            gameState.text = "You Lose 😢. Better Luck next time 😉."
            return false
        }
    }

    func scoreTrack(result: Bool) {
        if result {
            wins += 1
            winNum.text = "Wins: \(wins)"
        } else {
            loses += 1
            loseNum.text = "Loses: \(loses)"
        }
    }

    func revealKingCard(cards: [UIButton], images: [UIImage]) {
        for (i, image) in images.enumerated() {
            if image == UIImage.init(named: "kingCard") {
                cards[i].setImage(image, for: .normal)
                break
            }
        }
    }

    //Other Functions
    func disableOrEnableButtons(buttons: [UIButton], enabled: Bool) -> () {
        for button in buttons {
            if enabled {
                button.isEnabled = true
                continue
            }
            button.isEnabled = false
        }
    }

    func cardImgGenerator(cardNum: Int) -> [UIImage] {
        var cardImages = [UIImage.init(named: "kingCard")!]
        for _ in 1..<cardNum {
            cardImages.append(UIImage.init(named: "threeCard")!)
        }
        return cardImages
    }
    
    func cardsDisplay(totalCards: Int) {
        if totalCards == 3 {
            cardButtons[3].isHidden = true
            cardButtons[4].isHidden = true
        } else if totalCards == 5 {
            cardButtons[3].isHidden = false
            cardButtons[4].isHidden = false
        } else if totalCards == 4 {
            cardButtons[3].isHidden = false
            cardButtons[4].isHidden = true
        }
    }
}

