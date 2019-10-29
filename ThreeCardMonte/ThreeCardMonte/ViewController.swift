//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewLabel: UILabel!
    
    
    @IBOutlet weak var card1: UIButton!
    
    
    
    
    @IBOutlet weak var card2: UIButton!
    
    
    
    @IBOutlet weak var card3: UIButton!
    

    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    var gameOver = true
    
    @IBAction func Card0(_ sender: UIButton) {
        
       let images = ["threeCard", "kingCard","threeCard"]
        if gameOver == true {
        switch sender.tag {
        case 0:
            sender.setBackgroundImage(UIImage(named: images.randomElement() ?? "" ), for: .normal )
            if images.randomElement() == "kingCard" {
            viewLabel.text = "Win"
            } else if images.randomElement() == "threeCard" {
                viewLabel.text = "lose"
            }
        case 1:
            sender.setBackgroundImage(UIImage(named: images.randomElement() ?? "" ), for: .normal)
            if images.randomElement() == "kingCard" {
                viewLabel.text = "Win"
            } else if images.randomElement() == "threeCard" {
                viewLabel.text = "lose"
            }
        case 2:
            sender.setBackgroundImage(UIImage(named: images.randomElement() ?? ""), for: .normal)
            if images.randomElement() == "kingCard" {
                viewLabel.text = "Win"
            } else if images.randomElement() == "threeCard" {
                viewLabel.text = "lose"
            }
        default:
            print("error")
        }
        
        }
        gameOver = false 
        
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        
        gameOver = true
        
        card1.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        
        card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        
        card3.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        
        viewLabel.text = "Pick a card"
    }
    

    
}

