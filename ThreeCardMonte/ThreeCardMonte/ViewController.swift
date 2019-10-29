//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var status: UILabel!
        
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    

    @IBOutlet weak var card3: UIButton!
    
    @IBOutlet weak var newGame: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()

    
  }

    
    
    @IBAction func newGame(_ reset: UIButton) {
    
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage(named: "cardBackRed"), for: .normal)
        
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
    }
    
    
    
    @IBAction func cardGame(_ sender: UIButton) {
        
  
        
   let images = ["threeCard", "kingCard", "threeCard"]

        switch sender .tag {
        case 0:
            if images.randomElement() == "kingCard" {
                
                status.text = "You win!!👏🏻"
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false

            } else {
                images.randomElement() == "threeCard"
                status.text = "You lose😔"
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                
                card1.isEnabled = false
                card2.isEnabled = false
                card3.isEnabled = false
            }
        case 1:
          if images.randomElement() == "kingCard" {
                       
                    status.text = "You win!!👏🏻"
                       sender.setImage(UIImage(named: "kingCard"), for: .normal)
                       
                       card1.isEnabled = false
                       card2.isEnabled = false
                       card3.isEnabled = false

                   } else {
                       images.randomElement() == "threeCard"
                       
                        status.text = "You lose😔"
                       sender.setImage(UIImage(named: "threeCard"), for: .normal)
                     
                       card1.isEnabled = false
                       card2.isEnabled = false
                       card3.isEnabled = false
                   }
          
        case 2:
         if images.randomElement() == "kingCard" {
                      
                    status.text = "You win!!👏🏻"
                      sender.setImage(UIImage(named: "kingCard"), for: .normal)
                      
                      card1.isEnabled = false
                      card2.isEnabled = false
                      card3.isEnabled = false

                  } else {
                      images.randomElement() == "threeCard"
                      
                    status.text = "You lose😔"
                      sender.setImage(UIImage(named: "threeCard"), for: .normal)
                      //button image to threecard
                      card1.isEnabled = false
                      card2.isEnabled = false
                      card3.isEnabled = false
                  }

        default:
            print("no button i pressed is in switch")

        }
        
    }

}

