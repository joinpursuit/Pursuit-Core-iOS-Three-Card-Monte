//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

let threeCardArray = [0,1,2]
var wheresTheCard = threeCardArray.randomElement()
var guess = Int()


class ViewController: UIViewController {
    
   
   // @IBOutlet weak var title: UILabel!
    
    
    @IBOutlet weak var currentOptions: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // disable
       // redButton.isEnabled = false
        
        
        // Change Image of a UI Button
        
      //  redButton.setImage(UIImage.init(named: "Lime-Transparent-Background"), for: .normal)
    
    }
    
    
    
    // actions
    @IBAction func pickACard(_ sender: UIButton) {
        switch sender.tag{
        case 0:
            guess = 0
            if sender.tag == wheresTheCard {
                //set label to you win
            }
        case 1:
            guess = 1
//            if sender.tag == wheresTheCard {
//                //set label to you win
//            }
        case 2:
            guess = 2
//            if sender.tag == wheresTheCard {
//                //set label to you win
//            }
        default :
            print("not in scope")
        }
//        if wheresTheCard == guess {
//            pickACard.guess.setImage(UIImage.init(named: "kingCard"), for: .normal)
//        }
    }
    
}

