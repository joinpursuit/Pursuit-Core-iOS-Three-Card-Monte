//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Jason Ruan on 7/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCard: UIButton!
    @IBOutlet weak var secondCard: UIButton!
    @IBOutlet weak var thirdCard: UIButton!
    @IBOutlet weak var message: UILabel!
    
    let kingImage = UIImage(named: "kingCard")
    let threeImage = UIImage(named: "threeCard")
    let backImage = UIImage(named: "cardBackRed")
    var playerChoice: Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstCard.isEnabled = false
        secondCard.isEnabled = false
        thirdCard.isEnabled = false
    }
    
    @IBAction func NewGame(_ sender: UIButton) {
        message.text = "Pick a card, any card!"
        resetState()
        firstCard.isEnabled = true
        secondCard.isEnabled = true
        thirdCard.isEnabled = true
    }
    
    @IBAction func firstCardSelected(_ sender: UIButton) {
        print("First card selected")
        playerChoice = 0
        checkResult()
    }
    
    @IBAction func secondCardSelected(_ sender: UIButton) {
        print("Second card selected")
        playerChoice = 1
        checkResult()
    }
    
    @IBAction func thirdCardSelected(_ sender: UIButton) {
        print("Third card selected")
        playerChoice = 2
        checkResult()
    }
    
    func resetState() {
        firstCard.setImage(backImage, for: UIControl.State.normal)
        secondCard.setImage(backImage, for: UIControl.State.normal)
        thirdCard.setImage(backImage, for: UIControl.State.normal)
    }
    
    func disableCards() {
        firstCard.isEnabled = false
        secondCard.isEnabled = false
        thirdCard.isEnabled = false
    }
    
    func checkResult() {
        let winningCard = Int.random(in: 0...2)
        switch winningCard {
        case 0:
            firstCard.setImage(kingImage, for: UIControl.State.normal)
        case 1:
            secondCard.setImage(kingImage, for: UIControl.State.normal)
        case 2:
            thirdCard.setImage(kingImage, for: UIControl.State.normal)
        default:
            break
        }
        
        if playerChoice == winningCard {
            message.text = "Congratulations, you won!"
        } else {
            switch playerChoice {
            case 0:
                firstCard.setImage(threeImage, for: UIControl.State.normal)
            case 1:
                secondCard.setImage(threeImage, for: UIControl.State.normal)
            case 2:
                thirdCard.setImage(threeImage, for: UIControl.State.normal)
            default:
                break
            }
            message.text = "You lose!"
        }
        
        disableCards()
    }
}

