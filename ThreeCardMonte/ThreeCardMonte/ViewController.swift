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
    @IBOutlet weak var Display: UILabel!
    @IBOutlet weak var score: UILabel!
    var winCounter = 0
    var loseCounter = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func cardWillFlip(_ sender: UIButton) {
        
        func disableCards() {
            leftCard.isEnabled = false
            middleCard.isEnabled = false
            rightCard.isEnabled = false
        }
        func loseFlipKing(king: Int) {
            switch king {
            case 0:
            leftCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
            case 1:
            middleCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
            case 2:
            rightCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
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
        if let kingLocation = randomCard.randomElement() {
            switch sender.tag {
            case 0:
                if kingLocation == sender.tag {
                    leftCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    Display.text = "You Win!"
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                } else {
                    leftCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    Display.text = "You Lose!"
                    loseFlipKing(king: kingLocation)
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                }
                
            case 1:
                if kingLocation == sender.tag {
                    middleCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    Display.text = "You Win!"
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                } else {
                    middleCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    Display.text = "You Lose!"
                    loseFlipKing(king: kingLocation)
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                }
            case 2:
                if kingLocation == sender.tag {
                    rightCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    Display.text = "You Win!"
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                } else {
                    rightCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    Display.text = "You Lose!"
                    loseFlipKing(king: kingLocation)
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                }
            default:
                print("Error")
            }
        }
    }
    @IBAction func newGame(_ sender: UIButton) {
        func enableCards() {
            leftCard.isEnabled = true
            middleCard.isEnabled = true
            rightCard.isEnabled = true
        }
        func flipCardsBack() {
            leftCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            middleCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            rightCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        }
        func originalDisplay() {
            Display.text = "Pick a Card! Any Card!"
        }
        
        enableCards()
        flipCardsBack()
        originalDisplay()
    }
    
}

