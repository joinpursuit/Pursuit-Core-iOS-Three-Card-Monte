//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Jane Zhu on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var gameTitle: UILabel!
    
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var card0: UIButton!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    @IBOutlet weak var card3: UIButton!
    
    @IBOutlet weak var card4: UIButton!
    
    @IBOutlet weak var winNum: UILabel!

    @IBOutlet weak var lossNum: UILabel!
    
    @IBOutlet weak var newGame: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        card3.isHidden = true
        card4.isHidden = true
        
  }

    var winCount = 0
    var lossCount = 0
    
    var threeCardMode: Bool = true
    var fourCardMode: Bool = false
    var fiveCardMode: Bool = false
    
    var arrayImage: [UIImage] = [UIImage(named: "threeCard")!, UIImage(named: "threeCard")!, UIImage(named: "kingCard")!].shuffled()
    
    @IBAction func cardFlip(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            if fiveCardMode {
                sender.setImage(arrayImage[0], for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                card4.isEnabled = false
                if arrayImage[0] == UIImage(named: "kingCard") {
                    winCount += 1
                    message.text = "You win. Play Again?"
                } else {
                    lossCount += 1
                    message.text = "You lose. Play Again?"
                    if arrayImage[1] == UIImage(named: "kingCard") {
                        card1.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[2] == UIImage(named: "kingCard") {
                        card2.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[3] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[4] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
            
            if fourCardMode {
                sender.setImage(arrayImage[0], for: .normal)
                card0.isEnabled = false
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
                        card1.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[2] == UIImage(named: "kingCard") {
                        card2.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[3] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
            
            if threeCardMode {
            sender.setImage(arrayImage[0], for: .normal)
            card0.isEnabled = false
            card1.isEnabled = false
            card2.isEnabled = false
            if arrayImage[0] == UIImage(named: "kingCard") {
                winCount += 1
                message.text = "You win. Play Again?"
            } else {
                lossCount += 1
                message.text = "You lose. Play Again?"
                if arrayImage[1] == UIImage(named: "kingCard") {
                    card1.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                if arrayImage[2] == UIImage(named: "kingCard") {
                    card2.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
            }
        case 1:
            if fiveCardMode {
                sender.setImage(arrayImage[1], for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                card4.isEnabled = false
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
                        card2.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[3] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[4] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
            
            if fourCardMode {
                sender.setImage(arrayImage[1], for: .normal)
                card0.isEnabled = false
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
                        card0.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[2] == UIImage(named: "kingCard") {
                        card2.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[3] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
            
            if threeCardMode {
            sender.setImage(arrayImage[1], for: .normal)
            card0.isEnabled = false
            card1.isEnabled = false
            card2.isEnabled = false
            if arrayImage[1] == UIImage(named: "kingCard") {
                winCount += 1
                message.text = "You win. Play Again?"
            } else {
                lossCount += 1
                message.text = "You lose. Play Again?"
                if arrayImage[0] == UIImage(named: "kingCard") {
                    card0.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                if arrayImage[2] == UIImage(named: "kingCard") {
                    card2.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
            }
        case 2:
            if fiveCardMode {
                sender.setImage(arrayImage[2], for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                card4.isEnabled = false
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
                    if arrayImage[3] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[4] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
            
            if fourCardMode {
                sender.setImage(arrayImage[2], for: .normal)
                card0.isEnabled = false
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
                        card0.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[1] == UIImage(named: "kingCard") {
                        card1.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[3] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
            
            if threeCardMode {
            sender.setImage(arrayImage[2], for: .normal)
            card0.isEnabled = false
            card1.isEnabled = false
            card2.isEnabled = false
            if arrayImage[2] == UIImage(named: "kingCard") {
                winCount += 1
                message.text = "You win. Play Again?"
            } else {
                lossCount += 1
                message.text = "You lose. Play Again?"
                if arrayImage[0] == UIImage(named: "kingCard") {
                    card0.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                if arrayImage[1] == UIImage(named: "kingCard") {
                    card1.setImage(UIImage(named: "kingCard"), for: .normal)
                }
            }
            }
        case 3:
            if fiveCardMode {
                sender.setImage(arrayImage[3], for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                card4.isEnabled = false
                if arrayImage[3] == UIImage(named: "kingCard") {
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
                    if arrayImage[2] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[4] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
            
            if fourCardMode {
                sender.setImage(arrayImage[3], for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                if arrayImage[3] == UIImage(named: "kingCard") {
                    winCount += 1
                    message.text = "You win. Play Again?"
                } else {
                    lossCount += 1
                    message.text = "You lose. Play Again?"
                    if arrayImage[0] == UIImage(named: "kingCard") {
                        card0.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[1] == UIImage(named: "kingCard") {
                        card1.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[2] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
                }
            
        case 4:
            if fiveCardMode {
                sender.setImage(arrayImage[4], for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
                card4.isEnabled = false
                if arrayImage[4] == UIImage(named: "kingCard") {
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
                    if arrayImage[2] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                    if arrayImage[3] == UIImage(named: "kingCard") {
                        card3.setImage(UIImage(named: "kingCard"), for: .normal)
                    }
                }
            }
        default:
            print("invalid")
        }
        
        winNum.text = "\(winCount)"
        lossNum.text = "\(lossCount)"
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        card4.isEnabled = true

        
        card0.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card4.setImage(UIImage(named: "cardBackRed"), for: .normal)
        
        message.text = "Pick a card."
        arrayImage = arrayImage.shuffled()
    }
    
    
    @IBAction func threeCardGame(_ sender: UIButton) {
        gameTitle.text = "Three Card Monte"
        threeCardMode = true
        card3.isHidden = true
        card4.isHidden = true
        
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
        
        card0.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        
        message.text = "Pick a card."
        
        arrayImage = [UIImage(named: "threeCard")!, UIImage(named: "threeCard")!, UIImage(named: "kingCard")!].shuffled()
        
        fourCardMode = false
        fiveCardMode = false
    }
    
    @IBAction func fourCardGame(_ sender: UIButton) {
        gameTitle.text = "Four Card Monte"
        fourCardMode = true
        card3.isHidden = false
        card4.isHidden = true
        
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        
        card0.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        
        message.text = "Pick a card."
        
        arrayImage = [UIImage(named: "threeCard")!, UIImage(named: "threeCard")!, UIImage(named: "kingCard")!, UIImage(named: "threeCard")!].shuffled()
        
        threeCardMode = false
        fiveCardMode = false
    }
    
    @IBAction func fiveCardGame(_ sender: UIButton) {
        gameTitle.text = "Five Card Monte"
        fiveCardMode = true
        card3.isHidden = false
        card4.isHidden = false
        
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        card4.isEnabled = true
        
        card0.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card4.setImage(UIImage(named: "cardBackRed"), for: .normal)
        
        message.text = "Pick a card."
    
        arrayImage = [UIImage(named: "threeCard")!, UIImage(named: "threeCard")!, UIImage(named: "kingCard")!, UIImage(named: "threeCard")!, UIImage(named: "threeCard")!].shuffled()

        threeCardMode = false
        fourCardMode = false
    }
    
    
}


