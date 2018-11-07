//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
   
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
                card1.isEnabled = false
                //change label to you win
                //disable
                //break
                
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                //change label to oyu lost
                //flip where the king is
                //disable
                
            }
        case 1:
            if logoImage[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
            }
        case 2:
            if logoImage[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
            } else {
                card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
            }
        default:
            print("INVALID TAG")
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
}



