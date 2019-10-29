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

    @IBAction func userCardsToChoose(_ sender: UIButton) {
        let winTag = Int.random(in: 0...2)
        if sender.tag == winTag {
            userFeedBack.text = "You win!"
        } else {
            userFeedBack.text = "You lost!"
        }
        
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        userFeedBack.text = "Pick a card, any card"
        
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
    }
    
}

