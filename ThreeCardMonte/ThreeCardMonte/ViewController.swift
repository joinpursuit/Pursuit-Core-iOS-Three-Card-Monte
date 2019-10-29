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
    // Do any additional setup after loading the view, typically from a nib.
    
  }

    
    
    @IBAction func cardGame(_ sender: UIButton) {
        
    // let newCard: (card: UIImage?, state: String)
// let cardButtonBackgroundImage( UIImage: named "cardBackRed", state: .normal!)
        
   let images = ["threeCard", "kingCard", "threeCard"]
//        let guess = Int.random(in: 0...2)
//
//        if guess == sender.tag {
//            status.accessibilityIdentifier = .some("You win!🎉🎉🎉")
//        } else {
//            status.accessibilityIdentifier = .some("You lose!")
//        }
//        let cardChoice: (card: UIImage?, gameStatus: UIView?)
        switch sender .tag {
        case 0:
            if images.randomElement() == "kingCard" {
                print("You win!!")
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                
                card1.isEnabled = false
//                card2 card3 disable
            } else {
                print("You lose")
                //button image to threecard
                //Disable card,1,2,3
            }
//            status.text = "You win!"
            print("i pressed 0 button")
        case 1:
            if images.randomElement() == "threeCard" {
                print("You lose")
            } else {
                print("You win")
            }
            print("i pressed 1 button")
        case 2:
            if images.randomElement() == "threeCard" {
                         print("You lose")
                     } else {
                         print("You win")
                     }
          print("i pressed 2 button")

        default:
            print("no button i pressed is in switch")

        }
        
    }

}

