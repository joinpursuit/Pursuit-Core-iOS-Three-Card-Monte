//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var arrays = ["right", "left", "bottom"]
var winningCard = arrays.randomElement()
let kingImage = UIImage(named: "kingCard")
let threeImage = UIImage(named: "threeCard")
let backImage = UIImage(named: "cardBackRed")

class ViewController: UIViewController {
    
    @IBOutlet weak var cardLeft: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var cardBottom: UIButton!
    @IBOutlet weak var cardRight: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 
    
    
    
    
    @IBAction func cardOnRightTouch(_ sender: UIButton) {
        if winningCard == "right" {
            self.textLabel.text = "you won"
            self.cardLeft.isEnabled = false
            self.cardBottom.isEnabled = false
            self.cardRight.setImage(kingImage, for: UIControl.State.normal)
        } else if winningCard == "left" {
            self.textLabel.text = "you lost"
            self.cardLeft.isEnabled = false
            self.cardBottom.isEnabled = false
            self.cardRight.setImage(threeImage, for: UIControl.State.normal)
            self.cardBottom.setImage(kingImage, for: UIControl.State.normal)
        } else if winningCard == "bottom" {
            self.textLabel.text = "you lost"
            self.cardLeft.isEnabled = false
            self.cardBottom.isEnabled = false
            self.cardRight.setImage(threeImage, for: UIControl.State.normal)
            self.cardLeft.setImage(kingImage, for: UIControl.State.normal)
        }
    }
    
    
    
    @IBAction func cardOnLeftTouch(_ sender: UIButton) {
        if winningCard == "left" {
            self.textLabel.text = "you won"
            self.cardBottom.isEnabled = false
            self.cardRight.isEnabled = false
            self.cardLeft.setImage(kingImage, for: UIControl.State.normal)
        } else if winningCard == "right" {
            self.textLabel.text = "you lost"
            self.cardBottom.isEnabled = false
            self.cardRight.isEnabled = false
            self.cardLeft.setImage(threeImage, for: UIControl.State.normal)
            self.cardRight.setImage(kingImage, for: UIControl.State.normal)
        } else if winningCard == "bottom" {
            self.textLabel.text = "you lost"
            self.cardBottom.isEnabled = false
            self.cardRight.isEnabled = false
            self.cardLeft.setImage(threeImage, for: UIControl.State.normal)
            self.cardBottom.setImage(kingImage, for: UIControl.State.normal)
        }
      
    }
    
    
    
    @IBAction func cardOnBottomTouch(_ sender: UIButton) {
        if winningCard == "bottom" {
            self.textLabel.text = "you won"
            self.cardLeft.isEnabled = false
            self.cardRight.isEnabled = false
            self.cardBottom.setImage(kingImage, for: UIControl.State.normal)
        } else if winningCard == "right" {
            self.textLabel.text = "you lost"
            self.cardLeft.isEnabled = false
            self.cardRight.isEnabled = false
            self.cardBottom.setImage(threeImage, for: UIControl.State.normal)
            self.cardLeft.setImage(kingImage, for: UIControl.State.normal)
        } else if winningCard == "left" {
            self.textLabel.text = "you lost"
            self.cardLeft.isEnabled = false
            self.cardRight.isEnabled = false
            self.cardBottom.setImage(threeImage, for: UIControl.State.normal)
            self.cardRight.setImage(kingImage, for: UIControl.State.normal)
        }
        
    }
    
    
    
    @IBAction func newGameTouch(_ sender: Any) {
        self.cardLeft.isEnabled = true
        self.cardBottom.isEnabled = true
        self.cardRight.isEnabled = true
        self.textLabel.text = "Pick a card, any card!"
        winningCard = arrays.randomElement()
        self.cardBottom.setImage(backImage, for: UIControl.State.normal)
        self.cardRight.setImage(backImage, for: UIControl.State.normal)
        self.cardLeft.setImage(backImage, for: UIControl.State.normal)
        
    }

}

