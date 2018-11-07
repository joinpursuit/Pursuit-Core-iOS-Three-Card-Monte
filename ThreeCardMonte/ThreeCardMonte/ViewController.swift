//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var youLose: UILabel!
    @IBOutlet weak var winOrLoseLabel: UILabel!
    @IBOutlet weak var cardOne: UIButton!
    @IBOutlet weak var cardTwo: UIButton!
    @IBOutlet weak var cardThree: UIButton!
    @IBOutlet weak var cardFive: UIButton!
    
    @IBOutlet weak var cardFour: UIButton!
    @IBOutlet var allButtons: [UIButton]!
    var arrayOfChoices = [UIImage.init(named:"threeCard"),
                          UIImage.init(named: "kingCard"),
                          UIImage.init(named: "threeCard")]
    var newRandom = [UIImage?]()
    var willRepeatProgram = Bool()
    
    @IBOutlet var fourCardGame: [UIButton]!
    

    @IBOutlet var fiveCardGame: [UIButton]!
    
    
    
  override func viewDidLoad() {
        super.viewDidLoad()
        newRandom = arrayOfChoices.shuffled()
        winOrLoseLabel.isHidden = true
        youLose.isHidden = true
        willRepeatProgram = false
    
  }

    @IBAction func switchOnButtons(_ sender: UIButton) {
        
        switch sender.tag{
        case 0:
            cardOne.setBackgroundImage(newRandom[0], for: .normal)
            if allButtons[0].currentBackgroundImage == arrayOfChoices[1]{
                winOrLoseLabel.isHidden = false
                cardTwo.isEnabled = false
                cardThree.isEnabled = false
                youLose.isHidden = true
            }else{
                print("you lost")
                winOrLoseLabel.isHidden = true
                youLose.isHidden = false
            }
        case 1:
            cardTwo.setBackgroundImage(newRandom[1], for: .normal)
            if allButtons[1].currentBackgroundImage == arrayOfChoices[1]{
                print("you won")
                winOrLoseLabel.isHidden = false
                cardOne.isEnabled = false
                cardThree.isEnabled = false
                youLose.isHidden = true
            }else{print("you lost")}
            winOrLoseLabel.isHidden = true
            youLose.isHidden = false
        case 2:
            cardThree.setBackgroundImage(newRandom[2], for: .normal)
            if allButtons[2].currentBackgroundImage == arrayOfChoices[1]{
                print("you won")
                winOrLoseLabel.isHidden = false
                cardOne.isEnabled = false
                cardTwo.isEnabled = false
                youLose.isHidden = true
            }else{print("you lost")}
            winOrLoseLabel.isHidden = true
            youLose.isHidden = false
        case 3:
            cardFour.isHidden = true
            
        case 4:
            print("d")
        default:
            print("c")
            
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
    willRepeatProgram = true
        
    }
    
}

