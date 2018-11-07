//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var randArray: [Int] = [0,1,2,3,4]
var randomEle = randArray.randomElement()
var correctGuess = 0
var wrongGuess = 0
class ViewController: UIViewController {

    
    @IBOutlet weak var firstCard: UIButton!
    @IBOutlet weak var secondCard: UIButton!
    @IBOutlet weak var thirdCard: UIButton!
    @IBOutlet weak var fourthCard: UIButton!
    @IBOutlet weak var fifthCard: UIButton!
    @IBOutlet weak var newGame3: UIButton!
    @IBOutlet weak var newGame4: UIButton!
    @IBOutlet weak var newGame5: UIButton!
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var resetScore: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    setFalse()
    setHide()
    gameTitle.font = UIFont(name: "HelveticaNeue-UltraLight", size: 80.0)
    gameTitle.text = "Three Card Monte!!"
    
    // Do any additional setup after loading the view, typically from a nib.
  }
    func cardReveal(a: Int, b: Int) {
        switch a {
        case 0 :
            firstCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        case 1 :
            secondCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        case 2 :
            thirdCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        case 3 :
            fourthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        case 4 :
            fifthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
        default :
            print("Something went wrong")
        }
        switch b {
        case 0 :
            firstCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
        case 1 :
            secondCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
        case 2 :
            thirdCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
        case 3 :
            fourthCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
        case 4 :
            fifthCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
        default :
            print("Something went wrong")
        }

    }
    func setFalse() {
        firstCard.isEnabled = false
        secondCard.isEnabled = false
        thirdCard.isEnabled = false
        fourthCard.isEnabled = false
        fifthCard.isEnabled = false
    }
    func setHide() {
        firstCard.isHidden = true
        secondCard.isHidden =  true
        thirdCard.isHidden = true
        fourthCard.isHidden = true
        fifthCard.isHidden = true
    }
    func newGameCard(a: Int) {
        switch a {
        case 3:
            randArray = [0,1,2]
            firstCard.isHidden = false
            secondCard.isHidden = false
            thirdCard.isHidden = false
            firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            fourthCard.isHidden = true
            fifthCard.isHidden = true
            randomEle = randArray.randomElement()
            firstCard.isEnabled = true
            secondCard.isEnabled = true
            thirdCard.isEnabled = true
            fourthCard.isEnabled = false
            fifthCard.isEnabled = false
        case 4:
            randArray = [0,1,2,3]
            firstCard.isHidden = false
            secondCard.isHidden = false
            thirdCard.isHidden = false
            fourthCard.isHidden = false
            firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            fourthCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            fifthCard.isHidden = true
            randomEle = randArray.randomElement()
            firstCard.isEnabled = true
            secondCard.isEnabled = true
            thirdCard.isEnabled = true
            fourthCard.isEnabled = true
            fifthCard.isEnabled = false
        case 5:
            randArray = [0,1,2,3,4]
            firstCard.isHidden = false
            secondCard.isHidden = false
            thirdCard.isHidden = false
            fourthCard.isHidden = false
            fifthCard.isHidden = false
            firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            fourthCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            fifthCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            randomEle = randArray.randomElement()
            firstCard.isEnabled = true
            secondCard.isEnabled = true
            thirdCard.isEnabled = true
            fourthCard.isEnabled = true
            fifthCard.isEnabled = true
        default:
            print("Something went wrong in newGameCard function")
        }
    }
    @IBAction func cardSelect (_ sender: UIButton) {
        switch sender.tag {
            case 0:
                if sender.tag == randomEle {
                    firstCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    messageLabel.text = "You found the king!"
                    correctGuess += 1
                } else {
                    if let randomInt = randomEle {
                        cardReveal(a: randomInt, b: sender.tag)
                    }
                    wrongGuess += 1
                    messageLabel.text = "Wrong card!"
                }
                correctLabel.text = String(correctGuess)
                wrongLabel.text = String(wrongGuess)
                setFalse()
            case 1:
                if sender.tag == randomEle {
                    secondCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    messageLabel.text = "You found the king!"
                    correctGuess += 1
                } else {
                    if let randomInt = randomEle {
                        cardReveal(a: randomInt, b: sender.tag)
                    }
                    wrongGuess += 1
                    messageLabel.text = "Wrong card!"
                }
                correctLabel.text = String(correctGuess)
                wrongLabel.text = String(wrongGuess)
                setFalse()
            case 2:
                if sender.tag == randomEle {
                    thirdCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    messageLabel.text = "You found the king!"
                    correctGuess += 1
                } else {
                    if let randomInt = randomEle {
                        cardReveal(a: randomInt, b: sender.tag)
                    }
                    wrongGuess += 1
                    messageLabel.text = "Wrong card!"
                }
                correctLabel.text = String(correctGuess)
                wrongLabel.text = String(wrongGuess)
                setFalse()
            case 3:
                if sender.tag == randomEle {
                    fourthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    messageLabel.text = "You found the king!"
                    correctGuess += 1
                } else {
                    if let randomInt = randomEle {
                        cardReveal(a: randomInt, b: sender.tag)
                    }
                    wrongGuess += 1
                    messageLabel.text = "Wrong card!"
                }
                correctLabel.text = String(correctGuess)
                wrongLabel.text = String(wrongGuess)
                setFalse()
            case 4:
                if sender.tag == randomEle {
                    fifthCard.setImage(UIImage.init(named: "kingCard"), for: .normal)
                    messageLabel.text = "You found the king!"
                    correctGuess += 1
                } else {
                    if let randomInt = randomEle {
                        cardReveal(a: randomInt, b: sender.tag)
                    }
                    wrongGuess += 1
                    messageLabel.text = "Wrong card!"
                }
                correctLabel.text = String(correctGuess)
                wrongLabel.text = String(wrongGuess)
                setFalse()
            default:
                print("error")
        }
    }
    @IBAction func newGame3 (_ sender: UIButton) {
        gameTitle.isHidden = true
        newGameCard(a: 3)
        messageLabel.text = "Find the king!"
        sender.setTitle("Continue!", for: .normal)
        newGame4.setTitle("New Game - 4 Cards", for: .normal)
        newGame5.setTitle("New Game - 5 Cards", for: .normal)
    }
    @IBAction func newGame4 (_ sender: UIButton) {
        gameTitle.isHidden = true
        newGameCard(a: 4)
        messageLabel.text = "Find the king!"
        sender.setTitle("Continue!", for: .normal)
        newGame3.setTitle("New Game - 3 Cards", for: .normal)
        newGame5.setTitle("New Game - 5 Cards", for: .normal)
    }
    @IBAction func newGame5 (_ sender: UIButton) {
        gameTitle.isHidden = true
        newGameCard(a: 5)
        messageLabel.text = "Find the king!"
        sender.setTitle("Continue!", for: .normal)
        newGame3.setTitle("New Game - 3 Cards", for: .normal)
        newGame4.setTitle("New Game - 4 Cards", for: .normal)
    }
    @IBAction func resetScore (_ sender: UIButton) {
        gameTitle.isHidden = false
        wrongGuess = 0
        wrongLabel.text = String(wrongGuess)
        correctGuess = 0
        correctLabel.text = String(correctGuess)
        setFalse()
        setHide()
        messageLabel.text = "Find the king! Choose a game to start!"
        newGame3.setTitle("New Game - 3 Cards", for: .normal)
        newGame4.setTitle("New Game - 4 Cards", for: .normal)
        newGame5.setTitle("New Game - 5 Cards", for: .normal)

    }
}

