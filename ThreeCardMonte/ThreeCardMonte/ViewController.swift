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
    
    
    @IBOutlet weak var card0: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var winLoseMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    
    @IBAction func cards(_ sender: UIButton) {
        
        let randomImage:[UIImage] = [UIImage.init(named: "kingCard")!, UIImage.init(named: "threeCard")!, UIImage.init(named: "threeCard")!]
        
        var images = randomImage.shuffled()
        
        switch sender.tag {
        case 0:
            if UIImage(named: "kingCard") == images[0]{
                card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
             
                winLoseMessage.text = "You win!"
                
            } else {
                card0.setImage(UIImage.init(named: "threeCard"), for: .normal)
                winLoseMessage.text = "You lost!"
                
            }
            disable()
        case 1:
            if UIImage(named: "kingCard") == images[1]{
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                winLoseMessage.text = "You win!"
                
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                winLoseMessage.text = "You lost!"
                
            }
            disable()
        case 2:
            if UIImage(named: "kingCard") == images[2]{
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                winLoseMessage.text = "You win!"
                
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                winLoseMessage.text = "You lost!"
                
            }
            disable()
            
        default:
            print("Invalid selection")
            
        }
        for cardKings in 0..<images.count{
            if images[cardKings] == UIImage(named: "kingCard"){
                if cardKings == 0{
                    card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
                if cardKings == 1{
                    card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
                if cardKings == 2{
                    card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                }
            }
        }
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
        card0.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card0.isEnabled = true
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card1.isEnabled = true
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.isEnabled = true
        winLoseMessage.text = "Pick any Card"
    }
    
    @IBAction func disable(){
        card0.isEnabled = false
        card1.isEnabled = false
        card2.isEnabled = false
        
    }
    
    
}
