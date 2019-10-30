//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var typeCardArray = ["cardBackRed","threeCard","kingCard"]
var cardsArrayIfLost = ["cardBackRed","kingCard"]

let cardBackRed = typeCardArray[0]
let threeCard = typeCardArray[1]
let kingCard = typeCardArray[2]
var randomCard = typeCardArray.randomElement()
var shuffled = cardsArrayIfLost.shuffled()


class ViewController: UIViewController {
   
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var newGame: UIButton!
    @IBOutlet weak var cardSelectLabel: UILabel!
    
    let selected = UIControl.State.normal
    let cardImage = UIImage(named: threeCard )
    let cardImage2 = UIImage(named: kingCard)
    var randomImage = UIImage(named: shuffled[0])
    var randomImage2 = UIImage(named: shuffled[1])
    let defaultImage = UIImage(named: cardBackRed)
    
    func turnOff()  {
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
    }
    
    func turnOn()   {
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
    }
    
    func reset()    {
        typeCardArray = ["cardBackRed","threeCard","kingCard"]
        cardsArrayIfLost = ["cardBackRed","kingCard"]
        randomCard = typeCardArray.randomElement()
        shuffled = cardsArrayIfLost.shuffled()
        turnOn()
        card1.setBackgroundImage(defaultImage, for: selected)
        card2.setBackgroundImage(defaultImage, for: selected)
        card3.setBackgroundImage(defaultImage, for: selected)
        randomImage = UIImage(named: shuffled[0])
        randomImage2 = UIImage(named: shuffled[1])
        cardSelectLabel.text = "Pick The Right Card"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }

    
    @IBAction func pickCard(_ sender: UIButton) {
        
        switch  sender.tag {
            case 0:
                if randomCard != kingCard   {
                    cardSelectLabel.text = "You Lose!"
                    sender.setBackgroundImage(cardImage, for: selected)
                          
                    card2.setBackgroundImage(randomImage, for: selected)
                           
                    card3.setBackgroundImage(randomImage2, for: selected)
                       }
                else    {
                    cardSelectLabel.text = "You Win!"
                sender.setBackgroundImage(cardImage2, for: selected)
                       }
            turnOff()
        case 1:
            if randomCard != kingCard   {
                
                cardSelectLabel.text = "You Lose!"
                sender.setBackgroundImage(cardImage, for: selected)
                          
                card1.setBackgroundImage(randomImage, for: selected)
                           
                card3.setBackgroundImage(randomImage2, for: selected)
                       }
            else    {
                cardSelectLabel.text = "You Win!"
                sender.setBackgroundImage(cardImage2, for: selected)
                       }
            turnOff()
        case 2:
            if randomCard != kingCard   {
                cardSelectLabel.text = "You Lose!"
                
                sender.setBackgroundImage(cardImage, for: selected)
                          
                card1.setBackgroundImage(randomImage, for: selected)
                           
                card2.setBackgroundImage(randomImage2, for: selected)
                       }
            else    {
                cardSelectLabel.text = "You Win!"
                sender.setBackgroundImage(cardImage2, for: selected)
                       }
            turnOff()
        case 3:
            reset()
            
        default:
            print("look at me")
        }
    }
}
