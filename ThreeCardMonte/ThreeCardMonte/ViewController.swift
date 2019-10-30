//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    @IBOutlet weak var card3: UIButton!
    
    var winningcard = Int.random(in: 0...2)
    //rangeOfCards.randomElement()
    
    @IBOutlet weak var labelAboutGameStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAboutGameStatus.text = "Pick any card"
    }
    
    @IBAction func cardGame(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            if sender.tag == winningcard {
                labelAboutGameStatus.text = "You win!"
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                
            } else {
                labelAboutGameStatus.text = "You lose!"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                winningCardOpens()
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
            }
            
        case 1:
            if sender.tag == winningcard {
                labelAboutGameStatus.text = "You win!"
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                
            } else {
                labelAboutGameStatus.text = "You lose!"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                winningCardOpens()
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
            }
            
        default:
            if sender.tag == winningcard {
                labelAboutGameStatus.text = "You win!"
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                
            } else {
                labelAboutGameStatus.text = "You lose!"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                winningCardOpens()
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
            }
        }
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        winningcard = Int.random(in: 0...2)
        labelAboutGameStatus.text = "Pick any card"
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
    }
    
    func winningCardOpens() {
        if winningcard == 0 {
            card1.setImage(UIImage(named: "kingCard"), for: .normal)
        } else if winningcard == 1 {
            card2.setImage(UIImage(named: "kingCard"), for: .normal)
        } else {
            card3.setImage(UIImage(named: "kingCard"), for: .normal)
        }
    }
}




