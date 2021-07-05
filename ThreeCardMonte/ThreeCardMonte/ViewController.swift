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

    
  }

    var counterWin = 0
    var counterLoose = 0
    
    @IBOutlet weak var scoreCounter: UILabel!
    
    func disableAll() {
        card0.isEnabled = false
        card1.isEnabled = false
        card2.isEnabled = false
    }
 
    @IBAction func playButton(_ sender: UIButton) {
        card0.setImage(UIImage.init(named:"cardBackRed"), for: .normal)
        card0.isEnabled = true
        card1.setImage(UIImage.init(named:"cardBackRed"), for: .normal)
        card1.isEnabled = true
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.isEnabled = true
        messageLabel.isHidden = true
    }
    
   
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card0: UIButton!
    @IBAction func cardFlipper(_ sender: UIButton) {
        
       
        
     let arrayOfImages = ([UIImage.init(named: "kingCard")!, UIImage.init(named: "threeCard")!, UIImage.init(named: "threeCard")!].shuffled())
       // need an array of UIImages shuffled 
       
     
        switch sender.tag {
        case 0:
            sender.setImage(arrayOfImages[0], for: .normal)
            if UIImage.init(named: "kingCard") == arrayOfImages[0] {
                messageLabel.text = "You Win!"
                messageLabel.isHidden = false
                counterWin += 1
                scoreCounter.text = ("Score: Wins: \(counterWin)  Lost: \(counterLoose)")
                
            } else {
                if UIImage.init(named: "kingCard") != arrayOfImages[0] {
                    messageLabel.text = "You lost!"
                    card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                     messageLabel.isHidden = false
                    counterLoose += 1
                    scoreCounter.text = ("Score: Wins: \(counterWin)  Lost: \(counterLoose)")
                    
                }
            }
          
          disableAll()
            
        case 1:
           sender.setImage(arrayOfImages[1], for: .normal)
           if UIImage.init(named: "kingCard") == arrayOfImages[1] {
            messageLabel.text = "Winer Winer"
            messageLabel.isHidden = false
            counterWin += 1
            scoreCounter.text = ("Score: Wins: \(counterWin)  Lost:  \(counterLoose)")
            
           } else {
            if UIImage.init(named: "kingCard") != arrayOfImages[1] {
                  messageLabel.text = "You lost!"
                 card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
                 messageLabel.isHidden = false
                counterLoose += 1
                scoreCounter.text = ("Score: Wins: \(counterWin)  Lost: \(counterLoose)")
                
            }
            }
            disableAll()
            
        case 2:
           sender.setImage(arrayOfImages[2], for: .normal)
           if UIImage.init(named: "kingCard") == arrayOfImages[2] {
            messageLabel.text = "Winer Winer"
            messageLabel.isHidden = false
            counterWin += 1
            scoreCounter.text = ("Score: Wins: \(counterWin)  Lost:  \(counterLoose)")
            
           } else {
            if UIImage.init(named: "kingCard") != arrayOfImages[2] {
                 messageLabel.text = "You lost!"
                 card1 .setImage(UIImage.init(named: "kingCard"), for: .normal)
                 messageLabel.isHidden = false
                counterLoose += 1
                scoreCounter.text = ("Score: Wins: \(counterWin)  Lost: \(counterLoose)")
                
            }
            }
           disableAll()
        default:
            print("invalid")

        }
    }
}


