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
        // Do any additional setup after loading the view, typically from a nib.
    labelAboutGameStatus.text = "Pick any card"
    }
    
    @IBAction func cardGame(_ sender: UIButton) {
        
//        winningcard = rangeOfCards.randomElement()
        //print(winningcard)
        
        switch sender.tag {
        case 0:
            if sender.tag == winningcard {
                labelAboutGameStatus.text = "You win!"
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                card1.isEnabled = false //why false?
                card2.isEnabled = false
                card3.isEnabled = false
                

            } else {
                labelAboutGameStatus.text = "You lose!"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                card1.isEnabled = false //why false?
                card2.isEnabled = false
                card3.isEnabled = false
            }

            
            
//        sender.setImage(UIImage(named: "threeCard"), for: .normal)
           // sender.isEnabled
            
        case 1:
            labelAboutGameStatus.text = "You win!"
            
            sender.setImage(UIImage(named: "kingCard"), for: .normal)
            
        default:
            labelAboutGameStatus.text = "You lose!"
            
            sender.setImage(UIImage(named: "threeCard"), for: .normal)
        }
                
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        winningcard = Int.random(in: 0...2)
        print(winningcard)
        labelAboutGameStatus.text = "Pick any card"
        card1.isEnabled = true//why false?
        card2.isEnabled = true
        card3.isEnabled = true
    }
}
    //    @IBAction func newGame(_ sender: UIButton) {
//        sender.tag
//        sender.setImage("cardBackRed", for: .normal)
//    }


