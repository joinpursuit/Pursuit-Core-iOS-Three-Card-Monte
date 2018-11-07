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
        
    }
    
    
    
    // actions
    @IBAction func pickACard(_ sender: UIButton) {
        switch sender.tag{
        case 0:
            guess = 0
            if sender.tag == wheresTheCard {
                card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
                 //set label to you win
                
            } else {
                card0.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
            }
        case 1:
            guess = 1
            if sender.tag == wheresTheCard {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
            }else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
            }
            
        case 2:
            guess = 2
            if sender.tag == wheresTheCard {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
            }else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card0.isEnabled = false
                card1.isEnabled = false
                card2.isEnabled = false
            }
            
        default :
            print("not in scope")
        }
    }
}

