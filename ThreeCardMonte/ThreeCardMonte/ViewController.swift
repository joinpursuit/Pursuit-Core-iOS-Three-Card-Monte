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
    
   
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
        let kingImage = UIImage(named: "kingCard") ?? UIColor.red
        let threeDiamond = UIImage(named: "threeCard") ?? UIColor.red
    
        let backOfCard = UIImage(named: "cardBackRed") ?? UIColor.yellow
        
        
        var imageArray = [threeDiamond, kingImage,].shuffled()
 
        
    
    }
    
    var images = assests.kingCard
    
//    [UIImage.kingCard, UIImage.threeCard]
  
    @IBAction func CardIns(_ sender: UIButton) {
       
        var imageArray = [threeDiamond, kingImage]
        sender.imageView = imageArray.random 
        
    }
    
    @IBAction func newGameReset(_ sender: UIButton) {
        
    }
    
}
    
    
    
    
    




