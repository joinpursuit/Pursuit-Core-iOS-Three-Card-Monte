//
//  ViewController.swift
//  Three Card Monte
//
//  Created by Phoenix McKnight on 7/29/19.
//  Copyright © 2019 Phoenix McKnight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var randomNum = [1,2,3].randomElement()!
    let kingImage = UIImage(named:"kingCard")
    let threeCard = UIImage(named:"threeCard")
    let blank = UIImage(named:"cardBackRed")
    var winCount = 0
    var loseCount = 0
    
    @IBOutlet weak var Condition: UILabel!
    
    @IBOutlet weak var kingImage1: UIButton!
    
    @IBOutlet weak var ThreeCard: UIButton!
    
    @IBOutlet weak var RedCard: UIButton!
    
    @IBAction func King(_ sender: UIButton) {
        let randomCardLose = [threeCard,blank].shuffled()
        
        if randomNum == 1 {
        
            kingImage1.setImage(kingImage, for: UIControl.State.normal)
            
            winCount += 1
            self.Condition.text = "You win! You won \(winCount) time(s) and lost \(loseCount) time(s)."
        } else {
            kingImage1.setImage(randomCardLose[0], for: UIControl.State.normal)
            
            RedCard.setImage(randomCardLose[1], for: UIControl.State.normal)
            
            ThreeCard.setImage(kingImage, for: UIControl.State.normal)
           loseCount += 1
            self.Condition.text = "You lose! You lost \(loseCount) time(s) and won \(winCount) time(s)."
            
            kingImage1.isEnabled = false
            ThreeCard.isEnabled = false
            RedCard.isEnabled = false
            }
            }
    
    
    @IBAction func LoseContition(_ sender: UIButton) {
        let randomCardLose = [threeCard,blank].shuffled()
        if randomNum == 2 {
            ThreeCard.setImage(kingImage, for: UIControl.State.normal)
            winCount += 1
self.Condition.text = "You win! You won \(winCount) time(s) and lost \(loseCount) time(s)."
            kingImage1.isEnabled = false
            ThreeCard.isEnabled = false
            RedCard.isEnabled = false
        } else {
            
    ThreeCard.setImage(randomCardLose[0], for: UIControl.State.normal)
            
            kingImage1.setImage(kingImage, for: UIControl.State.normal)
            
            RedCard.setImage(randomCardLose[1], for: UIControl.State.normal)
            loseCount += 1
            self.Condition.text = "You lose! You lost \(loseCount) time(s) and won \(winCount) time(s)."

            kingImage1.isEnabled = false
            ThreeCard.isEnabled = false
            RedCard.isEnabled = false
        }
    }
    
   
    @IBAction func SecondLoseConition(_ sender: UIButton) {
        let randomCardLose = [threeCard,blank].shuffled()
        if randomNum == 3 {
           RedCard.setImage(kingImage, for: UIControl.State.normal)
            winCount += 1
            self.Condition.text = "You win! You won \(winCount) time(s) and lost \(loseCount) time(s)."
            
            kingImage1.isEnabled = false
            ThreeCard.isEnabled = false
            RedCard.isEnabled = false
        } else {
            RedCard.setImage(randomCardLose[0], for: UIControl.State.normal)
            
            ThreeCard.setImage(randomCardLose[1], for: UIControl.State.normal)
            
            kingImage1.setImage(kingImage, for: UIControl.State.normal)
            loseCount += 1

            self.Condition.text = "You lose! You lost \(loseCount) time(s) and won \(winCount) time(s)."
            kingImage1.isEnabled = false
            ThreeCard.isEnabled = false
            RedCard.isEnabled = false
        }
    }
    @IBAction func NewGamefunc(_ sender: UIButton) {
        self.Condition.text = "                    Pick a card, any card!"
        randomNum = [1,2,3].randomElement()!
        RedCard.setImage(blank, for: UIControl.State.normal)
        
        ThreeCard.setImage(blank, for: UIControl.State.normal)
        
        kingImage1.setImage(blank, for: UIControl.State.normal)
        kingImage1.isEnabled = true
        ThreeCard.isEnabled = true
        RedCard.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

