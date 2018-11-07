//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
var correct = 0
var wrong = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCard: UIButton!
    @IBOutlet weak var secondCard: UIButton!
    @IBOutlet weak var thirdCard: UIButton!
    @IBOutlet weak var fourthCard: UIButton!
    @IBOutlet weak var fifthCard: UIButton!
    @IBOutlet weak var fiveCardGame: UIButton!
    @IBOutlet weak var fourCardGame: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var correctButton: UILabel!
    @IBOutlet weak var wrongButton: UILabel!


  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    firstCard.isHidden = true
    secondCard.isHidden = true
    thirdCard.isHidden = true
    fourthCard.isHidden = true
    fifthCard.isHidden = true
    displayLabel.isHidden = true
  }
    
    @IBAction func typeOfGame(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            firstCard.isHidden = false
            secondCard.isHidden = false
            thirdCard.isHidden = false
            fourthCard.isHidden = true
            fifthCard.isHidden = true
            displayLabel.isHidden = true
        case 1:
            firstCard.isHidden = false
            secondCard.isHidden = false
            thirdCard.isHidden = false
            fourthCard.isHidden = false
            fifthCard.isHidden = true
            displayLabel.isHidden = true
        case 2:
            firstCard.isHidden = false
            secondCard.isHidden = false
            thirdCard.isHidden = false
            fourthCard.isHidden = false
            fifthCard.isHidden = false
            displayLabel.isHidden = true
        default:
            print("Wrong")
        }
    }
    
    @IBAction func cardToBePicked(_ sender: UIButton) {
        let randomCard = Int.random(in: 0...2)
        let cardImg1: [UIImage] = [UIImage.init(named: "kingCard")!, UIImage.init(named: "cardBackRed")!,UIImage.init(named: "cardBackRed")!,UIImage.init(named: "cardBackRed")!]
        let randomImg1 = cardImg1.shuffled()
        switch sender.tag {
        case 0:
            if randomCard == 0 {
                sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "Correct"
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
                fourthCard.isEnabled = false
                fifthCard.isEnabled = false
                correct += 1
                correctButton.text = "Correct: \(correct)"
                
            } else {
//            sender.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            displayLabel.text = "Wrong"
            firstCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
            secondCard.setImage(randomImg1[0], for: .normal)
            thirdCard.setImage(randomImg1[1], for: .normal)
            fourthCard.setImage(randomImg1[2], for: .normal)
            fifthCard.setImage(randomImg1[3], for: .normal)
            firstCard.isEnabled = false
            secondCard.isEnabled = false
            thirdCard.isEnabled = false
            fourthCard.isEnabled = false
            fifthCard.isEnabled = false
                wrong += 1
                wrongButton.text = "Wrong: \(wrong)"
            }
        
        case 1:
            if randomCard == 1 {
                sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "Correct"
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
                fourthCard.isEnabled = false
                fifthCard.isEnabled = false
                correct += 1
                correctButton.text = "Correct: \(correct)"
            } else {
            firstCard.setImage(randomImg1[0], for: .normal)
            secondCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
            thirdCard.setImage(randomImg1[1], for: .normal)
            fourthCard.setImage(randomImg1[2], for: .normal)
            fifthCard.setImage(randomImg1[3], for: .normal)
            displayLabel.text = "Wrong"
            firstCard.isEnabled = false
            secondCard.isEnabled = false
            thirdCard.isEnabled = false
            fourthCard.isEnabled = false
            fifthCard.isEnabled = false
            
                wrong += 1
                wrongButton.text = "Wrong: \(wrong)"
            }
        case 2:
            if randomCard == 2 {
                sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "Correct"
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
                fourthCard.isEnabled = false
                fifthCard.isEnabled = false
                correct += 1
                correctButton.text = "Correct: \(correct)"
            } else {
            firstCard.setImage(randomImg1[0], for: .normal)
            secondCard.setImage(randomImg1[1], for: .normal)
            thirdCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
            fourthCard.setImage(randomImg1[2], for: .normal)
            fifthCard.setImage(randomImg1[3], for: .normal)
            displayLabel.text = "Wrong"
            firstCard.isEnabled = false
            secondCard.isEnabled = false
            thirdCard.isEnabled = false
            fourthCard.isEnabled = false
            fifthCard.isEnabled = false
                wrong += 1
                wrongButton.text = "Wrong: \(wrong)"
            }
        case 3:
            if randomCard == 3 {
                sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "Correct"
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
                fourthCard.isEnabled = false
                fifthCard.isEnabled = false
                correct += 1
                correctButton.text = "Correct: \(correct)"
            } else {
                firstCard.setImage(randomImg1[0], for: .normal)
                secondCard.setImage(randomImg1[1], for: .normal)
                thirdCard.setImage(randomImg1[2], for: .normal)
                fourthCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                fifthCard.setImage(randomImg1[3], for: .normal)
                displayLabel.text = "Wrong"
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
                fourthCard.isEnabled = false
                fifthCard.isEnabled = false
                wrong += 1
                wrongButton.text = "Wrong: \(wrong)"
            }
        case 4:
            if randomCard == 4 {
                sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "Correct"
//                firstCard.setImage(randomImg[0], for: .normal)
//                secondCard.setImage(randomImg[1], for: .normal)
//                thirdCard.setImage(randomImg[2], for: .normal)
//                fourthCard.setImage(randomImg[3], for: .normal)
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
                fourthCard.isEnabled = false
                fifthCard.isEnabled = false
                correct += 1
                correctButton.text = "Correct: \(correct)"
            } else {
                firstCard.setImage(randomImg1[0], for: .normal)
                secondCard.setImage(randomImg1[1], for: .normal)
                thirdCard.setImage(randomImg1[2], for: .normal)
                fourthCard.setImage(randomImg1[3], for: .normal)
                fifthCard.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "Wrong"
                firstCard.isEnabled = false
                secondCard.isEnabled = false
                thirdCard.isEnabled = false
                fourthCard.isEnabled = false
                fifthCard.isEnabled = false
                wrong += 1
                wrongButton.text = "Wrong: \(wrong)"
            }
        default:
            print("Wrong")
        }
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        firstCard.isEnabled = true
        secondCard.isEnabled = true
        thirdCard.isEnabled = true
        fourthCard.isEnabled = true
        fifthCard.isEnabled = true
        firstCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        secondCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        thirdCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        fourthCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        fifthCard.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        displayLabel.text = "Pick a Card"
    }
}



