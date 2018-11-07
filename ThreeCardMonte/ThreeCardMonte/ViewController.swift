//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstC: UIButton!
    @IBOutlet weak var SECONC: UIButton!
    @IBOutlet weak var thedC: UIButton!
    
    @IBOutlet weak var outletCard: UILabel!
    
    
    
  
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    
    @IBAction func cards(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            sender.setImage(UIImage.init(named: "cardBackRed"),for: .normal)
            outletCard.text = "You lost"
            firstC.isEnabled = false
            firstC.isEnabled = false
        case 1:
            sender.setImage(UIImage.init(named: "kingCard"),for: .normal)
            outletCard.text = "You wont"
            SECONC.isEnabled = false
            SECONC.isEnabled = false

            
        case 2:
            sender.setImage(UIImage.init(named: "threeCard"),for: .normal)
            outletCard.text = "You lost"
            thedC.isEnabled = false
            thedC.isEnabled = false

           
        default:
            print("Invalid input")
        }
   }

}
