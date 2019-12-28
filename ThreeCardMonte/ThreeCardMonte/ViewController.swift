//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

let threeCardArray = [0,1,2]
var cardHolder = threeCardArray.randomElement()
var wheresTheCard = 0


var guess = Int()


class ViewController: UIViewController {
    
    
    // @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var gameText: UILabel!
    
    
    
    
    //outlets
    @IBOutlet weak var card0: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // disable
        // redButton.isEnabled = false
        
        
        // Change Image of a UI Button
        
        //  redButton.setImage(UIImage.init(named: "Lime-Transparent-Background"), for: .normal)
        
        if let x = cardHolder{
            wheresTheCard = x
        }
        
    }
    
    
    
    // actions
    @IBAction func pickACard(_ sender: UIButton) {
         cardHolder = threeCardArray.randomElement()
        var winner = [0:card0,
                      1:card1,
                      2:card2]
       
        switch sender.tag{
        case 0:
            guess = 0
            if sender.tag == cardHolder {
                card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                //set label to you win
                gameText.text = "You Win!!!"
                
            } else {
                card0.setImage(UIImage.init(named: "threeCard"), for: .normal)
                
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                if let winCard = winner[wheresTheCard] {
                    winCard?.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                gameText.text = "You Lose!"
            }
        case 1:
            guess = 1
            if sender.tag == cardHolder {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                gameText.text = "You Win!!!"
            }else {
                
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                if let winCard = winner[wheresTheCard] {
                    winCard?.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                 gameText.text = "You Lose!"
            }
            
        case 2:
            guess = 2
            if sender.tag == cardHolder {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                gameText.text = "You Win!!!"
            }else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                if let winCard = winner[wheresTheCard] {
                    winCard?.setImage(UIImage(named: "kingCard"), for: .normal)
                }
                 gameText.text = "You Lose!"
            }
            
        default :
            print("not in scope")
        }
       
    }
    
    @IBAction func reset(_ sender: UIButton) {
         gameText.text = "Three-Card \"Give Us Your Money\" Monte"
        card0.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
        
        
    }
    
}

