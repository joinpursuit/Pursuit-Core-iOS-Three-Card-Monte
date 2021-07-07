//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winLoseChoose: UILabel!
    
    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
        
    }
     
    
    @IBAction func newGame(_ sender: UIButton) {
        let buttonArray = [button0, button1, button2]
        for button in buttonArray {
                       button?.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            button0.isEnabled = true
            button1.isEnabled = true
            button2.isEnabled = true
            winLoseChoose.text = "Can you find the King?"
            
            
                   }
        }
   
    
    @IBAction func cardButtons(_ sender: UIButton) {
//  the moment they press button
//        assign king card to one, assign 3 card to rest
        var cardArray = [UIImage.init(named: "kingCard"),UIImage.init(named: "threeCard"), UIImage.init(named: "threeCard")].shuffled()
        let buttonArray = [button0, button1, button2]
        
        for button in buttonArray {
            let lastImage = cardArray.popLast() ?? UIImage.init(named: "kingCard")
            button?.setImage(lastImage, for: .normal)

        }
        
        
        print("you pressed \(sender.tag)")
        switch sender.tag{
        case 0:
          if sender.currentImage == UIImage.init(named: "kingCard"){
            winLoseChoose.text = "You Win!!!!"
            button0.isEnabled = false
            button1.isEnabled = false
            button2.isEnabled = false
          }else{
            winLoseChoose.text = "You Loose"
             button2.isEnabled = false
             button1.isEnabled = false
             button0.isEnabled = false
            
            }
        case 1:
            if sender.currentImage == UIImage.init(named: "kingCard"){
              winLoseChoose.text = "You Win!!!!"
               button2.isEnabled = false
               button1.isEnabled = false
               button0.isEnabled = false
            }else{
              winLoseChoose.text = "You Loose"
               button2.isEnabled = false
               button1.isEnabled = false
               button0.isEnabled = false
              }
        case 2:
            if sender.currentImage == UIImage.init(named: "kingCard"){
              winLoseChoose.text = "You Win!!!!"
                button2.isEnabled = false
                button1.isEnabled = false
                button0.isEnabled = false
            }else{
              winLoseChoose.text = "You Loose"
              button2.isEnabled = false
              button1.isEnabled = false
              button0.isEnabled = false
              }
        default:
            print()
        
    }
    
        
}


    
}
 
