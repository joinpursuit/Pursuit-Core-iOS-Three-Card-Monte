//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var randNum = 0..<2
var randomEle = Int.random(in: randNum)
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
  }
    func cardReveal(a: Int, b: Int) {
        var array = [firstCard!,secondCard!,thirdCard!,fourthCard!,fifthCard!]
        if a != b {
            array[a].setImage(UIImage.init(named: "kingCard"), for: .normal)
            array[b].setImage(UIImage.init(named: "threeCard"), for: .normal)
            messageLabel.text = "Wrong Card!"
            wrongGuess += 1
        } else {
            array[a].setImage(UIImage.init(named: "kingCard"), for: .normal)
            messageLabel.text = "You found the king!"
            correctGuess += 1
        }
        correctLabel.text = String(correctGuess)
        wrongLabel.text = String(wrongGuess)
        setFalse()
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
        setFalse()
        setHide()
        gameTitle.isHidden = true
        var array = [firstCard!,secondCard!,thirdCard!,fourthCard!,fifthCard!]
        randNum = 0..<a
        randomEle = Int.random(in: randNum)
        for i in 0..<a {
            array[i].setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            array[i].isHidden = false
            array[i].isEnabled = true
        }
        messageLabel.text = "Find the king!"
        titleChanger(a: a)
    }
    func titleChanger(a: Int) {
        let array = [3,4,5]
        let ngArray = [newGame3!,newGame4!,newGame5!]
        newGame3.setTitle("New Game - 3 Cards", for: .normal)
        newGame4.setTitle("New Game - 4 Cards", for: .normal)
        newGame5.setTitle("New Game - 5 Cards", for: .normal)
        if array.contains(a) {
            let num = a - 3
            ngArray[num].setTitle("Continue", for: .normal)
        }
    }
    @IBAction func cardSelect (_ sender: UIButton) {
        cardReveal(a: randomEle, b: sender.tag)
    }
    @IBAction func newGame3 (_ sender: UIButton) {
        newGameCard(a: 3)
    }
    @IBAction func newGame4 (_ sender: UIButton) {
        newGameCard(a: 4)
    }
    @IBAction func newGame5 (_ sender: UIButton) {
        newGameCard(a: 5)
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
        titleChanger(a: 0)
    }
}

