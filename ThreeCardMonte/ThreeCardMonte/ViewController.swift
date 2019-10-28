//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static let backgroundImage: [UIImage] = [#imageLiteral(resourceName: "cardBackRed"), #imageLiteral(resourceName: "cardBackRed"), #imageLiteral(resourceName: "kingCard.jpg"), #imageLiteral(resourceName: "cardBackRed"), #imageLiteral(resourceName: "cardBackRed")]
    let wrongAnswerImage: Set<UIImage> = [#imageLiteral(resourceName: "cardBackRed")]
    var gameImage = backgroundImage.shuffled()
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card4: UIButton!
    @IBOutlet weak var card5: UIButton!
    @IBOutlet weak var userOptionsPlusOutput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        card1.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        card2.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        card3.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        
        card4.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        
        card5.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        
        gameImage = ViewController.backgroundImage.shuffled()
        
        userOptionsPlusOutput.text = "Pick a card, any card!"
    }
    
    @IBAction func backCardAction(_ sender: UIButton) {
        card1.setBackgroundImage(gameImage.popLast(), for: .normal)
        card2.setBackgroundImage(gameImage.popLast(), for: .normal)
        card3.setBackgroundImage(gameImage.popLast(), for: .normal)
        card4.setBackgroundImage(gameImage.popLast(), for: .normal)
        card5.setBackgroundImage(gameImage.popLast(), for: .normal)
        
        if !wrongAnswerImage.contains(sender.currentBackgroundImage!) {
            userOptionsPlusOutput.text = "You won!"
        } else {
            guard let buttonTitle = sender.titleLabel?.text else { return }
            
            userOptionsPlusOutput.text = "You lose..."
            switch buttonTitle.lowercased() {
            case "1":
                card1.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
            case "2":
                card2.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
            case "3":
                card3.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
            case "4":
                card4.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
            case "5":
                card5.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
            default:
                break
            }
        }
    }
}

