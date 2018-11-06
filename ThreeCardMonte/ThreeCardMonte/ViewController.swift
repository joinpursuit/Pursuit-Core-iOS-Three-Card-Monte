//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Jane Zhu on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    @IBOutlet weak var card3: UIButton!
    
    @IBOutlet weak var winNum: UILabel!

    @IBOutlet weak var lossNum: UILabel!
    
    @IBOutlet weak var newGame: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
  }

        var winCount = 0
        var lossCount = 0
    
    var arrayImage: [UIImage] = [UIImage(named: "threeCard")!, UIImage(named: "threeCard")!, UIImage(named: "kingCard")!].shuffled()
    

    @IBAction func cardFlip(_ sender: UIButton) {
       
        switch sender.tag {
        case 0:
            sender.setImage(arrayImage[0], for: .normal)
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
            if arrayImage[0] == UIImage(named: "kingCard") {
                winCount += 1
                message.text = "You win. Play Again?"
            } else {
                lossCount += 1
                message.text = "You lose. Play Again?"
                if arrayImage[1] == UIImage(named: "kingCard") {
                    card2.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                if arrayImage[2] == UIImage(named: "kingCard") {
                    card3.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
        case 1:
            sender.setImage(arrayImage[1], for: .normal)
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
            if arrayImage[1] == UIImage(named: "kingCard") {
                winCount += 1
                message.text = "You win. Play Again?"
            } else {
                lossCount += 1
                message.text = "You lose. Play Again?"
                if arrayImage[0] == UIImage(named: "kingCard") {
                    card1.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                if arrayImage[2] == UIImage(named: "kingCard") {
                    card3.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
        case 2:
            sender.setImage(arrayImage[2], for: .normal)
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
            if arrayImage[2] == UIImage(named: "kingCard") {
                winCount += 1
                message.text = "You win. Play Again?"
            } else {
                lossCount += 1
                message.text = "You lose. Play Again?"
                if arrayImage[0] == UIImage(named: "kingCard") {
                    card1.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                if arrayImage[1] == UIImage(named: "kingCard") {
                    card2.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
        default:
            print("invalid")
        }
        
        winNum.text = "\(winCount)"
        lossNum.text = "\(lossCount)"
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true

        
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)

        message.text = "Pick a card."
        arrayImage = arrayImage.shuffled()
    }
}


