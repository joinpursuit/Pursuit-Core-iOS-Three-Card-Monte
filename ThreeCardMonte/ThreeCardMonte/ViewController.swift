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
        //switch on the tag
          //0, 1, or 2
        switch sender.tag {
        case 0:
            card1.setImage(images[0], for: .normal)
            if images[0] == UIImage.init(named: "kingCard") {
                gameState.text = "You Win! 😄"
            } else {
                gameState.text = "You Lose 😢. Better Luck next time 😉."
            }
        case 1:
            card2.setImage(images[1], for: .normal)
            if images[1] == UIImage.init(named: "kingCard") {
                gameState.text = "You Win! 😄"
            } else {
                gameState.text = "You Lose 😢. Better Luck next time 😉."
            }
        case 2:
            card2.setImage(images[2], for: .normal)
            if images[2] == UIImage.init(named: "kingCard") {
                gameState.text = "You Win! 😄"
            } else {
                gameState.text = "You Lose 😢. Better Luck next time 😉."
            }
        default:
            print("Error")
        }

    }
    
    //new action for reset
    @IBAction func resetGame(_ sender: UIButton) {
        images = images.shuffled()
        gameState.text = "Pick A Card 🤚🏽"
        card1.setImage(faceDownCard, for: .normal)
        card2.setImage(faceDownCard, for: .normal)
        card3.setImage(faceDownCard, for: .normal)
    }
}

