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
    @IBOutlet weak var gameState: UILabel!
    @IBOutlet weak var newGame: UIButton!
    
    var cards = [UIButton]()
    
    //card images when flipped
        //how to safely unwrap this
    var images = [UIImage.init(named: "threeCard"),
                  UIImage.init(named: "threeCard"),
                  UIImage.init(named: "kingCard")]
    
    let faceDownCard = UIImage.init(named: "cardBackRed")
    
    override func viewDidLoad() { //runs 1 time at the beginning
    super.viewDidLoad()
    cards = [card1, card2, card3]
    images = images.shuffled()
    }
  
    //actions
    @IBAction func flipCard(_ sender: UIButton) {
        var winOrLose: Bool = true
        switch sender.tag {
        case 0:
            card1.setImage(images[0], for: .normal)
            winOrLose = winOrLoseFunc(imageOptional: images[0], gameState: gameState)
            if !winOrLose { flipKingCard(cards: cards, images: images) }
        case 1:
            card2.setImage(images[1], for: .normal)
            winOrLose = winOrLoseFunc(imageOptional: images[1], gameState: gameState)
            if !winOrLose { flipKingCard(cards: cards, images: images) }
        case 2:
            card3.setImage(images[2], for: .normal)
            winOrLose = winOrLoseFunc(imageOptional: images[2], gameState: gameState)
            if !winOrLose { flipKingCard(cards: cards, images: images) }
        default:
            print("Error")
        }
        
        buttonControlOnOff(buttons: cards, enabled: false)
    }
    
    //Reset Game When "New Game" is tapped
    @IBAction func resetGame(_ sender: UIButton) {
        images = images.shuffled()
        gameState.text = "Pick A Card 🤚🏽"
        card1.setImage(faceDownCard, for: .normal)
        card2.setImage(faceDownCard, for: .normal)
        card3.setImage(faceDownCard, for: .normal)
        buttonControlOnOff(buttons: cards, enabled: true)
    }
    
    
    
    //Functions
    func buttonControlOnOff(buttons: [UIButton], enabled: Bool) -> () {
        for button in buttons {
            if enabled {
                button.isEnabled = true
                continue
            }
            button.isEnabled = false
        }
    }
    

    func winOrLoseFunc(imageOptional: UIImage?, gameState: UILabel) -> Bool {
        guard let image = imageOptional else {return false}
        if image == UIImage.init(named: "kingCard") {
            gameState.text = "You Win! 😄"
            return true
        } else {
            gameState.text = "You Lose 😢. Better Luck next time 😉."
            return false
        }
    }
    
    func flipKingCard(cards: [UIButton], images: [UIImage?]) -> () {
        for (i, imageOptional) in images.enumerated() {
            guard let image = imageOptional else {continue}
            if image == UIImage.init(named: "kingCard") {
                cards[i].setImage(image, for: .normal)
            }
        }
    }
}

