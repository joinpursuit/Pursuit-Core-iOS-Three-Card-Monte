//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    //Label to display user feedback as to whether or not they won
    @IBOutlet weak var userFeedBack: UILabel!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    
    
    @IBAction func userCardsToChoose(_ pickedCard: UIButton) {
        let deck = [card1!, card2!, card3!]
        let winCard = deck.randomElement()!
        if pickedCard == winCard {
            userFeedBack.text = "You win!"
            pickedCard.setImage(UIImage(named: "kingCard"), for: .normal)
        } else {
            userFeedBack.text = "You lost!"
            pickedCard.setImage(UIImage(named: "threeCard"), for: .normal)
            winCard.setImage(UIImage(named: "kingCard"), for: .normal)
        }
        
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        userFeedBack.text = "Pick a card, any card"
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
    }
    
}

