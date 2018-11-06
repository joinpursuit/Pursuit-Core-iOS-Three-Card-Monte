//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstCard: UIButton!
    @IBOutlet weak var secondCard: UIButton!
    @IBOutlet weak var thirdCard: UIButton!
    @IBOutlet weak var newGame: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func cardSelect (_ sender: UIButton) {
//        var cardReveal: (pickCard: UIImage?, choice: String)?
        let randArray: [Int] = [0,1,2]
        var randomEle = randArray.randomElement()
        switch sender.tag {
            case 0:
                if sender.tag == randomEle {
                    firstCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    messageLabel.text = "You found the king!"
                } else {
                    firstCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    secondCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    messageLabel.text = "Wrong card!"
                }
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
            case 1:
                if sender.tag == randomEle {
                    firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    secondCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    messageLabel.text = "You found the king!"
                } else {
                    firstCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    secondCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    messageLabel.text = "Wrong card!"
                }
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
            case 2:
                if sender.tag == randomEle {
                    firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    thirdCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    messageLabel.text = "You found the king!"
                } else {
                    firstCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                    thirdCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    messageLabel.text = "Wrong card!"
                }
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
            case 3:
                firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                randomEle = randArray.randomElement()
                firstCard.isEnabled = true
                secondCard.isEnabled = true
                thirdCard.isEnabled = true
                messageLabel.text = "Find the king!"
            default:
                print("error")
        }
    }


}


