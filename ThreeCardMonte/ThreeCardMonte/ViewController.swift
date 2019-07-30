//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Samuel Roman on 29/7/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

let backofCard = UIImage(named: "back")
var wins = 0
var losses = 0
override func viewDidLoad() {
        super.viewDidLoad()
    }
@IBOutlet weak var leftCard: UIButton!
@IBOutlet weak var midCard: UIButton!
@IBOutlet weak var rightCard: UIButton!
@IBOutlet weak var pickACardLabel: UILabel!
@IBOutlet weak var statCounter: UILabel!
    
var images = [UIImage.init(named: "king-hearts")!, UIImage.init(named:"joker")!, UIImage.init(named: "joker")!].shuffled()
    
@IBAction func newGameStart(_ sender: UIButton) {
        self.pickACardLabel.text = "Pick a card, any card!"
        self.midCard.isEnabled = true
        self.rightCard.isEnabled = true
        self.leftCard.isEnabled = true
        leftCard.setBackgroundImage(backofCard, for: UIControl.State.normal)
        midCard.setBackgroundImage(backofCard, for: UIControl.State.normal)
        rightCard.setBackgroundImage(backofCard, for: UIControl.State.normal)
        
    }
    
    @IBAction func leftCardFlip(_ sender: UIButton) {
        self.rightCard.isEnabled = false
        self.midCard.isEnabled = false
        leftCard.setBackgroundImage(images.shuffled()[0], for: UIControl.State.normal)
        if UIImage.init(named: "king-hearts") == leftCard.backgroundImage(for: UIControl.State.normal) {
        self.pickACardLabel.text = "YOU WON"
            wins += 1
        } else if UIImage.init(named: "king-hearts") != leftCard.backgroundImage(for: UIControl.State.normal) {
        self.pickACardLabel.text = "YOU LOST"
            losses += 1
        }
        statCounter.isHidden = false
        statCounter.text = "WINS: \(wins) / LOSSES: \(losses)"
    }
    
    @IBAction func midCardFlip(_ sender: UIButton) {
        self.rightCard.isEnabled = false
        self.leftCard.isEnabled = false
        midCard.setBackgroundImage(images.shuffled()[1], for: UIControl.State.normal)
        if UIImage.init(named: "king-hearts") == midCard.backgroundImage(for: UIControl.State.normal) {
            self.pickACardLabel.text = "YOU WON"
            wins += 1
        } else if UIImage.init(named: "king-hearts") != midCard.backgroundImage(for: UIControl.State.normal) {
            self.pickACardLabel.text = "YOU LOST"
            losses += 1
        }
        statCounter.isHidden = false
        statCounter.text = "WINS: \(wins) / LOSSES: \(losses)"
    }
    
    @IBAction func rightCardFlip(_ sender: UIButton) {
        self.leftCard.isEnabled = false
        self.midCard.isEnabled = false
        rightCard.setBackgroundImage(images.shuffled()[0], for: UIControl.State.normal)
        if UIImage.init(named: "king-hearts") == rightCard.backgroundImage(for: UIControl.State.normal) {
            self.pickACardLabel.text = "YOU WON"
            wins += 1
        } else if UIImage.init(named: "king-hearts") != rightCard.backgroundImage(for: UIControl.State.normal) {
            self.pickACardLabel.text = "YOU LOST"
            losses += 1
        }
        statCounter.isHidden = false
        statCounter.text = "WINS: \(wins) / LOSSES: \(losses)"
    }

}


