//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var cardThreeOutlet: UIButton!
    
    
    
    @IBOutlet weak var cardTwoOutlet: UIButton!
    
    
    
    @IBOutlet weak var cardOneOutlet: UIButton!
    
    
    
    
//    var threeCards = [UIButton]
    
    @IBAction func resetGame(_ sender: UIButton) {
        cardThreeOutlet.setImage(UIImage.init(named:"cardBackRed"), for:.normal)
        cardThreeOutlet.isEnabled = true
    }
    
    
    @IBAction func cardThreeAction(_ sender: UIButton) {
        cardThreeOutlet.setImage(UIImage.init(named: "kingCard"), for:.normal)
        cardThreeOutlet.isEnabled = false
}
    
    
    
    @IBAction func cardTwoAction(_ sender: UIButton ) {
    }
    
    
    
    @IBAction func cardOneAction(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    // Do any additional setup after loading the view, typically from a nib.
  }

}
    
    


