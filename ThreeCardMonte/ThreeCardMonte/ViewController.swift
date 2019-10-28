//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardSelectLabel: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }


    
    @IBAction func pickCard(_ sender: UIButton) {
        
        let cardButton = UIButton()
        
        switch  sender.tag {
            
        case 0:
            cardSelectLabel.text = "You Lose!"
        case 1:
            cardSelectLabel.text = "You Lose!"
        case 2:
            cardSelectLabel.text = "You Win!"
            cardButton.setBackgroundImage(UIImage: "kingCard", for: <#UIControl.State#>)
        default:
            cardSelectLabel.text = "Game Error!"
        }
    
    }
    
}

