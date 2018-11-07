//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var playAgain = false
    
    @IBOutlet weak var leftCard: UIButton!
    @IBOutlet weak var centerCard: UIButton!
    @IBOutlet weak var rightCard: UIButton!
    
    @IBOutlet weak var displayText: UILabel!
    

    func defaultKing(newRandomArr: Int) {
        switch newRandomArr {
        case 0:
            leftCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        case 1:
            centerCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        case 2:
            rightCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        default:
            print("nothing to say")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    @IBAction func switchCard(_ sender: UIButton) {
        var newCard:(card: UIImage?, displayText: String)?
        
        let randomArray = [0,1,2]
        if  let newRandomArr =  randomArray.randomElement() {
            switch sender.tag {
            case 0:
                if newRandomArr == sender.tag { leftCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                     displayText.text = "You won!"
                }
                else {
                    leftCard.setImage(UIImage.init (named: "threeCard"), for: .normal)
                     displayText.text = "Sorry. You loss!"
                    defaultKing(newRandomArr: newRandomArr)
                }
                leftCard.isEnabled = false
                centerCard.isEnabled = false
                rightCard.isEnabled = false
            case 1:
                if newRandomArr == sender.tag { centerCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                     displayText.text = "You won!"
                }
                else {
                    centerCard.setImage(UIImage.init (named: "threeCard"), for: .normal)
                     displayText.text = "Sorry. You loss!"
                    defaultKing(newRandomArr: newRandomArr)
                }
                leftCard.isEnabled = false
                centerCard.isEnabled = false
                rightCard.isEnabled = false
            case 2:
                if newRandomArr == sender.tag { rightCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                     displayText.text = "You won!"
                }
                else {
                    rightCard.setImage(UIImage.init (named: "threeCard"), for: .normal)
                     displayText.text = "Sorry. You loss!"
                    defaultKing(newRandomArr: newRandomArr)
                }
                leftCard.isEnabled = false
                centerCard.isEnabled = false
                rightCard.isEnabled = false
            default:
                print("invalid selection")
            }
        }
        
        
    }
    
    @IBAction func restartGame(_ sender: UIButton) {
        leftCard.isEnabled = true
        centerCard.isEnabled = true
        rightCard.isEnabled = true
        
        rightCard.setImage(UIImage.init (named: "cardBackRed"), for: .normal)
        centerCard.setImage(UIImage.init (named: "cardBackRed"), for: .normal)
        leftCard.setImage(UIImage.init (named: "cardBackRed"), for: .normal)
        
        
    }
}


