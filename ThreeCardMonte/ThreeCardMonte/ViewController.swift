//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
   
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    
    @IBAction func flipACrd(_ sender: UIButton) {
        
        var logoImage: [UIImage] = [
            UIImage(named: "kingCard")!,
            UIImage(named: "threeCard")!,
            UIImage(named: "threeCard")!
        ]
        
        logoImage = logoImage.shuffled()
        
        switch sender.tag {
        case 0:
            if logoImage[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "you win!"
                
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "you lose!"
                
            }
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        case 1:
            if logoImage[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "you win!"
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
            displayLabel.text = "you lose!"
            }
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        case 2:
            if logoImage[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "you win!"
            } else {
                card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "you lose!"
            }
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
        default:
            print("INVALID TAG")
        }
        card1.isEnabled = false
        card2.isEnabled = false
        card3.isEnabled = false
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func newGame(_ sender: Any) {
        
        displayLabel.text = "Pick a Card"
        
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
         card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
         card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    }
}



