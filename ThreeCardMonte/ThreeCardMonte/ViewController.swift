//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textForUser: UILabel!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    
    let aceImage = UIImage(named: "Ace")
    let jackImage = UIImage(named: "Jack")
    let kingImage = UIImage(named: "King")
    let cardBackImage = UIImage(named: "CardBACK")
    var winningNumber = 2
    
    
    func disableButtons() -> Void {
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    }
    
    @IBAction func card1(_ sender: UIButton) {
        if winningNumber == 1 {
            self.textForUser.text = "You win!"
            
            card1.setImage(kingImage, for: UIControl.State.normal)
        
        } else {
            self.textForUser.text = "You lose!"
            
            card1.setImage(jackImage, for: UIControl.State.normal)
        }
        disableButtons()
    }


    @IBAction func card2(_ sender: UIButton) {
        if winningNumber == 2 {
            self.textForUser.text = "You win!"

            card2.setImage(kingImage, for: UIControl.State.normal)

        } else {
            self.textForUser.text = "You lose!"

            card2.setImage(aceImage, for: UIControl.State.normal)
        }
        disableButtons()
    }


    @IBAction func card3(_ sender: UIButton) {
        if winningNumber == 3 {
            self.textForUser.text = "You win!"

            card3.setImage(kingImage, for: UIControl.State.normal)
        } else {
            self.textForUser.text = "You lose!"

            card3.setImage(aceImage, for: UIControl.State.normal)
        }
        disableButtons()
    }


    @IBAction func startsNewGame(_ sender: UIButton) {
        self.textForUser.text = "Pick a card, any card!"
        
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        
        card1.setImage(cardBackImage, for: UIControl.State.normal)
        card2.setImage(cardBackImage, for: UIControl.State.normal)
        card3.setImage(cardBackImage, for: UIControl.State.normal)
        
        getRandomNumber()
    }
    
    func getRandomNumber() {
        let someNumbers = [1,2,3]
        let randomNumber = someNumbers.randomElement()
        
        if let randomNumber = randomNumber {
            winningNumber = randomNumber
        }
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
  }
}

