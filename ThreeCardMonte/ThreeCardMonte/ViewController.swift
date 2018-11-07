//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
var randomCard = [0,1,2]

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCard: UIButton!
    @IBOutlet weak var middleCard: UIButton!
    @IBOutlet weak var rightCard: UIButton!
    @IBOutlet weak var fourthCard: UIButton!
    @IBOutlet weak var fifthCard: UIButton!
    @IBOutlet weak var Display: UILabel!
    @IBOutlet weak var score: UILabel!
    var winCounter = 0
    var loseCounter = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    func enableCards() {
        leftCard.isEnabled = true
        middleCard.isEnabled = true
        rightCard.isEnabled = true
        if !fourthCard.isHidden {
            fourthCard.isEnabled = true
        }
        if !fifthCard.isHidden {
            fifthCard.isEnabled = true
        }
    }
    func removeHiddenRandom() {
        if !fifthCard.isHidden {
            randomCard.remove(at: 4)
        }
        if !fourthCard.isHidden {
            randomCard.remove(at: 3)
        }
    }
    func flipCardsBack() {
        leftCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        middleCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        rightCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        if !fourthCard.isHidden {
            fourthCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        }
        if !fifthCard.isHidden {
            fifthCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        }
    }
    func originalDisplay() {
        Display.text = "Pick a Card! Any Card!"
    }

    @IBAction func cardWillFlip(_ sender: UIButton) {
        
        func disableCards() {
            leftCard.isEnabled = false
            middleCard.isEnabled = false
            rightCard.isEnabled = false
            if !fourthCard.isHidden {
                fourthCard.isEnabled = false
            }
            if !fifthCard.isHidden {
                fifthCard.isEnabled = false
            }
        }
        func loseFlipKing(king: Int) {
            switch king {
            case 0:
            leftCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
            case 1:
            middleCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
            case 2:
            rightCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
            case 3:
                fourthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
            case 4:
                fifthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
            default:
            print("Error")
            }
        }
        func winLose(kingLocation: Int, tag: Int) {
            if kingLocation == tag {
                winCounter += 1
            } else {
                loseCounter += 1
            }
            score.text = "Won: \(winCounter) Lost: \(loseCounter)"
        }
        func isWinner(kingLocation: Int, tag: Int, card: UIButton) {
            if kingLocation == tag {
                card.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Display.text = "You Win!"
                disableCards()
                winLose(kingLocation: kingLocation, tag: sender.tag)
            } else {
                card.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Display.text = "You Lose!"
                loseFlipKing(king: kingLocation)
                disableCards()
                winLose(kingLocation: kingLocation, tag: sender.tag)
            }
        }
        if !fourthCard.isHidden {
            randomCard.append(3)
        }
        if !fifthCard.isHidden {
            randomCard.append(4)
        }
        if let kingLocation = randomCard.randomElement() {
            switch sender.tag {
            case 0:
                isWinner(kingLocation: kingLocation, tag: sender.tag, card: leftCard)
            case 1:
                isWinner(kingLocation: kingLocation, tag: sender.tag, card: middleCard)
            case 2:
                isWinner(kingLocation: kingLocation, tag: sender.tag, card: rightCard)
            case 3:
                isWinner(kingLocation: kingLocation, tag: sender.tag, card: fourthCard)
            case 4:
                isWinner(kingLocation: kingLocation, tag: sender.tag, card: fifthCard)
            default:
                print("Error")
            }
        }
    }
    @IBAction func new3Game(_ sender: UIButton) {
        removeHiddenRandom()
        fourthCard.isHidden = true
        fifthCard.isHidden = true
        enableCards()
        flipCardsBack()
        originalDisplay()
    }
    @IBAction func new4Game(_ sender: UIButton) {
        removeHiddenRandom()
        fourthCard.isHidden = false
        fifthCard.isHidden = true
        enableCards()
        flipCardsBack()
        originalDisplay()
    }
    @IBAction func new5Game(_ sender: UIButton) {
        fourthCard.isHidden = false
        fifthCard.isHidden = false
        enableCards()
        flipCardsBack()
        originalDisplay()
    }
    
}

