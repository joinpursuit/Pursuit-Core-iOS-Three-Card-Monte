//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    
    //outlets
    @IBOutlet weak var displayLabel: UILabel!


    // Button Outlets
    @IBOutlet weak var cardUno: UIButton!
    @IBOutlet weak var cardDos: UIButton!
    @IBOutlet weak var cardTres: UIButton!
    @IBOutlet weak var newGamez: UIButton!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
     
        
    }
    
    // changing the image of the card
   @IBAction func revealCards (_ sender: UIButton!) {
    let randomArray: [Int] = [1,2,3]
    let randomElement = randomArray.randomElement()
    
    
    switch sender.tag {
    case 1:
        if sender.tag == randomElement {
            cardUno.setImage(UIImage.init(named: "kingCard"), for: .normal)
            cardDos.isEnabled = false
            cardTres.isEnabled = false
            displayLabel.text = "You win"
        } else {
            cardUno.setImage(UIImage.init(named: "threeCard"), for: .normal)
            cardDos.setImage(UIImage.init(named: "kingCard"), for: .normal)
            cardTres.isEnabled = false
            displayLabel.text = "You trash"
            }
        
    case 2:
        if sender.tag == randomElement {
            cardDos.setImage(UIImage.init(named: "kingCard"), for: .normal)
            cardUno.isEnabled = false
            cardTres.isEnabled = false
            displayLabel.text = "You win"
        } else {
            cardDos.setImage(UIImage.init(named: "threeCard"), for: .normal)
            cardUno.setImage(UIImage.init(named: "kingCard"), for: .normal)
            cardTres.isEnabled = false
            displayLabel.text = "You trash"
            }
    
            case 3:
            if sender.tag == randomElement {
            cardTres.setImage(UIImage.init(named: "kingCard"), for: .normal)
            cardDos.isEnabled = false
            cardUno.isEnabled = false
            displayLabel.text = "You win"
            } else {
            cardTres.setImage(UIImage.init(named: "threeCard"), for: .normal)
            cardUno.setImage(UIImage.init(named: "kingCard"), for: .normal)
            cardDos.isEnabled = false
             displayLabel.text = "You trash"
        }
        
            default:
            print("wrong selection")
    }
    
}
    

    
    
    @IBAction func startingOverAgain (sender: UIButton) {
        cardUno.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
      cardDos.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        cardTres.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        cardUno.isEnabled = true
        cardDos.isEnabled = true
        cardTres.isEnabled = true
        displayLabel.text = "Good luck"
    }



}


