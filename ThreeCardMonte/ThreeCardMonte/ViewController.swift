//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var scoreV = 0
var missedV = 0



class ViewController: UIViewController {
    
    @IBOutlet weak var firstC: UIButton!
    @IBOutlet weak var SECONC: UIButton!
    @IBOutlet weak var thedC: UIButton!
    @IBOutlet weak var fourCard: UIButton!
    @IBOutlet weak var fiveCard: UIButton!
    
    @IBOutlet weak var outletCard: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var missed: UILabel!
    
    
    @IBOutlet weak var Invisible: UIButton!
    @IBOutlet weak var Invisible1: UIButton!
    
    
    @IBAction func playAgaingButton(_ sender: UIButton) {
        updateCrds()
        
    }
   @IBOutlet weak var buttonState: UIButton!
    
    
    @IBAction func playOfTheGame(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            fiveCard.isHidden = false
            SECONC.isHidden = false
            thedC.isHidden = false
            Invisible.isHidden = true
            Invisible1.isHidden = true
            
        case 1:
            fiveCard.isHidden = false
            SECONC.isHidden = false
            thedC.isHidden = false
            Invisible.isHidden = false
            Invisible1.isHidden = true
            
        case 2:
            fiveCard.isHidden = false
            SECONC.isHidden = false
            thedC.isHidden = false
            Invisible.isHidden = false
            Invisible1.isHidden = false
        default:
            print("??")
        }
    }
    
    
    func updateCrds() {
        firstC.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        SECONC.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        thedC.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        Invisible.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        Invisible1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        enableCards()
        outletCard.text = "Pick a card"
        buttonState.isHidden = true
    }
    
    func enableCards() {
        firstC.isEnabled = true
        SECONC.isEnabled = true
        thedC.isEnabled = true
        Invisible.isEnabled = true
        Invisible1.isEnabled = true
        
        
    }
    func disableCards() {
        firstC.isEnabled = false
        SECONC.isEnabled = false
        thedC.isEnabled = false
        Invisible.isEnabled = false
        Invisible1.isEnabled = false
       
    }
    let cardArr = ["king","three"]

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        buttonState.isHidden = true
        
  }
    
    @IBAction func cards(_ sender: UIButton) {
        buttonState.isHidden = false
        let cardNumber = Int.random(in: 0...1)
        let chosenCard = cardArr[cardNumber]
        let kingLocationNumber = Int.random(in: 0...1)

        switch sender.tag {
        case 0:
            if chosenCard == "king" {
            sender.setImage(UIImage.init(named: "kingCard"),for: .normal)
                outletCard.text = "You won!"
                
                scoreV += 1
                Score.text = "Score \(scoreV)"

            } else {
                sender.setImage(UIImage.init(named: "threeCard"),for: .normal)
                outletCard.text = "You lost"
                
                missedV += 1
                missed.text = "Missed \(missedV)"
                
                
                let remainingCards = ["second","third"]
                let kingLocation = remainingCards[kingLocationNumber]
                if kingLocation == "second" {
                    SECONC.setImage(UIImage.init(named: "kingCard"),for: .normal)
                } else {
                    thedC.setImage(UIImage.init(named: "kingCard"),for: .normal)
 }
}

            disableCards()
            
        case 1:
            if chosenCard == "king" {
                sender.setImage(UIImage.init(named: "kingCard"),for: .normal)
                outletCard.text = "You won!"
                
                scoreV += 1
                Score.text = "Score \(scoreV)"
                
            } else {
                sender.setImage(UIImage.init(named: "threeCard"),for: .normal)
                outletCard.text = "You lost"
                
                missedV += 1
                missed.text = "Missed \(missedV)"
                
                let remainingCards = ["first","third"]
                let kingLocation = remainingCards[kingLocationNumber]
                if kingLocation == "first" {
                    firstC.setImage(UIImage.init(named: "kingCard"),for: .normal)
                } else {
                    thedC.setImage(UIImage.init(named: "kingCard"),for: .normal)
                }
            }
            disableCards()
        case 2:
            if chosenCard == "king" {
                sender.setImage(UIImage.init(named: "kingCard"),for: .normal)
                outletCard.text = "You won!"
                
                scoreV += 1
                Score.text = "Score \(scoreV)"
                
            } else {
                sender.setImage(UIImage.init(named: "threeCard"),for: .normal)
                outletCard.text = "You lost"
                
                missedV += 1
                missed.text = "Missed \(missedV)"
                
                let remainingCards = ["first","second"]
                let kingLocation = remainingCards[kingLocationNumber]
                if kingLocation == "first" {
                    firstC.setImage(UIImage.init(named: "kingCard"),for: .normal)
                } else {
                    SECONC.setImage(UIImage.init(named: "kingCard"),for: .normal)
                }
            }
            disableCards()
        default:
            print("Invalid input")
        }
    }
    
}
