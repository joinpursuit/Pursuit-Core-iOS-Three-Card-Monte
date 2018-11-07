//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

//outlet




class ViewController: UIViewController {
    
    
    
//    var tagArray = [0,1,2]
//    var randomTag = tagArray.randomElement()
    
    @IBOutlet weak var card0: UIButton!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    
    
  override func viewDidLoad() {
    super.viewDidLoad()

    
  }

    
    @IBAction func newGame(_ sender: Any) {
        card0.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card0.isEnabled = true
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card1.isEnabled = true
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.isEnabled = true

    }
    
    @IBOutlet weak var winLoseMessage: UILabel!
    
    @IBAction func cards(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            sender.setImage(UIImage.init(named: "threeCard"), for: .normal)
            winLoseMessage.text = "You lost!"
            card0.isEnabled = false
            card1.isEnabled = false
            card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
            card2.isEnabled = false

            
        case 1:
            sender.setImage(UIImage.init(named: "threeCard"), for: .normal)
            winLoseMessage.text = "You lost!"

            card0.isEnabled = false
            card1.isEnabled = false
            card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
            card2.isEnabled = false

            
        case 2:
            sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
            winLoseMessage.text = "You win!"
            
            
            card0.isEnabled = false
            card1.isEnabled = false
            card2.isEnabled = false
            
        default:
            print("invalid selection")
        }
        
    }
    
}

//actions

//var images: [UIImage] = [UIImage.init(named: "kingCard")!, UIImage.init(named: "threeCard")!, UIImage.init(named: "threeCard")!]
//images = images.shuffled()
//
