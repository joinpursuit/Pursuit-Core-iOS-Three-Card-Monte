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
        if !fourthCard.isHidden {
            randomCard.append(3)
        }
        if !fifthCard.isHidden {
            randomCard.append(4)
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
            case 3:
                if kingLocation == sender.tag {
                    fourthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    Display.text = "You Win!"
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                } else {
                    fourthCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    Display.text = "You Lose!"
                    loseFlipKing(king: kingLocation)
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                }
            case 4:
                if kingLocation == sender.tag {
                    fifthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    Display.text = "You Win!"
                    disableCards()
                    winLose(kingLocation: kingLocation, tag: sender.tag)
                } else {
                    fifthCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
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
    @IBAction func new3Game(_ sender: UIButton) {
        fourthCard.isHidden = true
        fifthCard.isHidden = true
        enableCards()
        flipCardsBack()
        originalDisplay()
    }
    @IBAction func new4Game(_ sender: UIButton) {
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

