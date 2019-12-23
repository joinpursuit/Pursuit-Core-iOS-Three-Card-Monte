//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

// Default Array
var randomArr = [0,1,2]
var randomElement = randomArr.randomElement()

// Score Counters
var correct = 0
var incorrect = 0


class ViewController: UIViewController {
    // Label Outputs
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var timesWonLabel: UILabel!
    @IBOutlet weak var timesLostLabel: UILabel!
    
    // Card Buttons
    @IBOutlet weak var cardOne: UIButton!
    @IBOutlet weak var cardTwo: UIButton!
    @IBOutlet weak var cardThree: UIButton!
    @IBOutlet weak var cardFour: UIButton!
    @IBOutlet weak var cardFive: UIButton!
    
    // Reset Game Buttons
    @IBOutlet weak var newGame: UIButton!
    @IBOutlet weak var newFourCard: UIButton!
    @IBOutlet weak var newFiveCard: UIButton!
    

  override func viewDidLoad() {
    super.viewDidLoad()
    timesWonLabel.text = "Times Won: \(correct)"
    timesLostLabel.text = "Times Lost: \(incorrect)"
    
    cardFour.isHidden = true
    cardFive.isHidden = true
  }
    
    func kingCardForCards (a:Int, b:Int) {
        if a == 0 {
            cardOne.setImage(UIImage.init(named: "kingCard" ), for: .normal)
        } else if a == 1 {
            cardTwo.setImage(UIImage.init(named: "kingCard" ), for: .normal)
        } else if a == 2 {
            cardThree.setImage(UIImage.init(named: "kingCard" ), for: .normal)
        } else if a == 3 {
            cardFour.setImage(UIImage.init(named: "kingCard" ), for: .normal)
        } else if a == 4 {
            cardFive.setImage(UIImage.init(named: "kingCard" ), for: .normal)
        }
        if b == 0 {
            cardOne.setImage(UIImage.init(named: "threeCard" ), for: .normal)
        } else if b == 1 {
            cardTwo.setImage(UIImage.init(named: "threeCard" ), for: .normal)
        } else if b == 2 {
            cardThree.setImage(UIImage.init(named: "threeCard" ), for: .normal)
        } else if b == 3 {
            cardFour.setImage(UIImage.init(named: "threeCard" ), for: .normal)
        } else if b == 4 {
            cardFive.setImage(UIImage.init(named: "threeCard" ), for: .normal)
        }
    }
    
  // Actions
    @IBAction func flipCards(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if sender.tag == randomElement {
                cardOne.setImage(UIImage.init(named: "kingCard" ), for: .normal)
                displayLabel.text = "You Win"
                correct += 1
            } else {
                cardOne.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "You Lose"
                if let randomNum = randomElement {
                    kingCardForCards(a: randomNum, b: sender.tag)
                }
                incorrect += 1
            }
        case 1:
            if sender.tag == randomElement {
                cardTwo.setImage(UIImage.init(named: "kingCard" ), for: .normal)
                displayLabel.text = "You Win"
                correct += 1
            }else {
                cardTwo.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "You Lose"
                if let randomNum = randomElement {
                    kingCardForCards(a: randomNum, b: sender.tag)
                }
                incorrect += 1
            }
        case 2:
            if sender.tag == randomElement {
                cardThree.setImage(UIImage.init(named: "kingCard" ), for: .normal)
                displayLabel.text = "You Win"
                correct += 1
            }else {
                cardThree.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "You Lose"
                if let randomNum = randomElement {
                    kingCardForCards(a: randomNum, b: sender.tag)
                }
                incorrect += 1
            }
        case 3:
            if sender.tag == randomElement {
                cardFour.setImage(UIImage.init(named: "kingCard" ), for: .normal)
                displayLabel.text = "You Win"
                correct += 1
            }else {
                cardFour.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "You Lose"
                if let randomNum = randomElement {
                    kingCardForCards(a: randomNum, b: sender.tag)
                }
                incorrect += 1
            }
        case 4:
            if sender.tag == randomElement {
                cardFive.setImage(UIImage.init(named: "kingCard" ), for: .normal)
                displayLabel.text = "You Win"
                correct += 1
            }else {
                cardFive.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "You Lose"
                if let randomNum = randomElement {
                    kingCardForCards(a: randomNum, b: sender.tag)
                }
                incorrect += 1
            }
        default:
            print("invalid tag")
        }
        cardOne.isEnabled = false
        cardTwo.isEnabled = false
        cardThree.isEnabled = false
        cardFour.isEnabled = false
        cardFive.isEnabled = false
        timesWonLabel.text = "Times Won: \(correct)"
        timesLostLabel.text = "Times Lost: \(incorrect)"
    }
    
    @IBAction func resetThreeGame(sender: UIButton) {
        randomArr = [0,1,2]
        randomElement = randomArr.randomElement()

        cardFour.isHidden = true
        cardFive.isHidden = true
        
        cardOne.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardTwo.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardThree.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        
        displayLabel.text = "Pick a card, any card!"
        
        cardOne.isEnabled = true
        cardTwo.isEnabled = true
        cardThree.isEnabled = true
    }
    
    @IBAction func resetFourGame(_ sender: UIButton) {
        randomArr = [0,1,2,3]
        randomElement = randomArr.randomElement()
        
        cardFour.isHidden = false
        cardFive.isHidden = true
        
        cardOne.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardTwo.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardThree.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardFour.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        
        displayLabel.text = "Pick a card, any card!"
        
        cardOne.isEnabled = true
        cardTwo.isEnabled = true
        cardThree.isEnabled = true
        cardFour.isEnabled = true
        }
    
    @IBAction func resetFiveCard(_ sender: UIButton) {
        randomArr = [0,1,2,3,4]
        randomElement = randomArr.randomElement()
        
        cardFour.isHidden = false
        cardFive.isHidden = false
        
        cardOne.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardTwo.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardThree.setImage(UIImage.init(named: "cardBackRed" ), for: .normal)
        cardFour.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        cardFive.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        
        displayLabel.text = "Pick a card, any card!"
        
        cardOne.isEnabled = true
        cardTwo.isEnabled = true
        cardThree.isEnabled = true
        cardFour.isEnabled = true
        cardFive.isEnabled = true
    }
    
    @IBAction func resetScores(_ sender: Any) {
        correct = 0
        incorrect = 0
        timesWonLabel.text = "Times Won: \(correct)"
        timesLostLabel.text = "Times Lost: \(incorrect)"
    }
}

