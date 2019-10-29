//
//  ViewController.swift
//  3 card Montee test
//
//  Created by Liubov Kaper  on 10/29/19.
//  Copyright © 2019 Luba Kaper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    @IBOutlet weak var card3: UIButton!
    
    
    
    @IBOutlet weak var scoreLable: UILabel!
    
     var score = Int()
    
    
    
    @IBOutlet weak var winLoseLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func actionForCards(_ sender: UIButton) {
//        var cardArray = ["kingCard", "threeCard", "cardBackRed"]
//        cardArray.shuffle()
//        winLoseLabel.text = "you win"
        let range = 0...2
        let winningTag = range.randomElement() ?? 2
        let cardnumber = sender.tag
//        print("this is your winning card \(winningTag) but you picked \(cardnumber)")
        if winningTag == cardnumber {
            winLoseLabel.text = "You win"
            sender.setImage(UIImage(named: "kingCard"), for: .normal)
            score = score + 1
        } else {
            winLoseLabel.text = "You lose"
            sender.setImage(UIImage(named: "threeCard"), for: .normal)
            score = score + 0
            openTwoCards(winningTag: winningTag)
        }
        scoreLable.text = "Score: \(score)"
    }
    func openTwoCards(winningTag: Int) {
        switch winningTag {
        case 0:
            card1.setImage(UIImage(named: "kingCard"), for: .normal)
        case 1:
            card2.setImage(UIImage(named: "kingCard"), for: .normal)
        case 2:
            card3.setImage(UIImage(named: "kingCard"), for: .normal)
        default:
            card1.setImage(UIImage(named: "kingCard"), for: .normal)
            
        }
    }
    
    
    @IBAction func resetGame(_ sender: UIButton) {
       // let reset = true
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        winLoseLabel.text = "Pick a card!"
        
    }
    
   
   
}

