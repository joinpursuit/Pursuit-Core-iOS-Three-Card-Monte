//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var tagZeroButton: UIButton!
    @IBOutlet weak var tagOneButton: UIButton!
    @IBOutlet weak var tagTwoButton: UIButton!
    @IBOutlet weak var tagThreeButton: UIButton!
    @IBOutlet weak var tagFourButton: UIButton!
    
    var winningTag: Int = 0
    var score: Int = 0
    let winningCard = UIImage(named:"KingOfSpades")
    let otherCard =  UIImage(named:"ThreeOfDiamonds")
    let hiddenCard = UIImage(named:"CardBackground")
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    scoreLabel.text = "Score: \(score)"
    for subview in view.subviews{
        if subview.tag < 5 {
            subview.isHidden = true
            subview.isUserInteractionEnabled = false
        }
    }
    
  }
    
    @IBAction func newThreeCardGame(_ sender: UIButton){
        winningTag = Int.random(in: 0...2)
        viewLabel.text = "Pick a Card, Any Card"
            for subview in view.subviews{
                if subview.tag < 3{
            subview.isUserInteractionEnabled = true
                    subview.isHidden = false
            }
                if subview.tag == 3 || subview.tag == 4 {
                    subview.isUserInteractionEnabled = false
                    subview.isHidden = true
                }
        }
        tagZeroButton.setBackgroundImage(hiddenCard,for: .normal)
        tagOneButton.setBackgroundImage(hiddenCard,for: .normal)
        tagTwoButton.setBackgroundImage(hiddenCard,for: .normal)
    }
    
    @IBAction func newFourCardGame(_ sender: UIButton){
        winningTag = Int.random(in: 0...3)
        viewLabel.text = "Pick a Card, Any Card"
            for subview in view.subviews{
                if subview.tag < 4{
            subview.isUserInteractionEnabled = true
                    subview.isHidden = false
            }
                if subview.tag == 4 {
                    subview.isUserInteractionEnabled = false
                    subview.isHidden = true
                }
        }
        tagZeroButton.setBackgroundImage(hiddenCard,for: .normal)
        tagOneButton.setBackgroundImage(hiddenCard,for: .normal)
        tagTwoButton.setBackgroundImage(hiddenCard,for: .normal)
        tagThreeButton.setBackgroundImage(hiddenCard,for: .normal)
    }
    
    @IBAction func newFiveCardGame(_ sender: UIButton){
        winningTag = Int.random(in: 0...4)
        viewLabel.text = "Pick a Card, Any Card"
            for subview in view.subviews{
                if subview.tag < 5{
            subview.isUserInteractionEnabled = true
                    subview.isHidden = false
            }
        }
        
        tagZeroButton.setBackgroundImage(hiddenCard,for: .normal)
        tagOneButton.setBackgroundImage(hiddenCard,for: .normal)
        tagTwoButton.setBackgroundImage(hiddenCard,for: .normal)
        tagThreeButton.setBackgroundImage(hiddenCard,for: .normal)
        tagFourButton.setBackgroundImage(hiddenCard,for: .normal)
    }

    @IBAction func flipCard(_ sender: UIButton){
        
        if sender.tag == winningTag{
            sender.setBackgroundImage(winningCard,for: .normal)
            viewLabel.text = "Winner!"
            score += 1
        } else {
            sender.setBackgroundImage(otherCard,for: .normal)
            viewLabel.text = "Nice Try. Better luck next time."
            
            switch winningTag{
            case 0:
                tagZeroButton.setBackgroundImage(winningCard,for: .normal)
            case 1:
                tagOneButton.setBackgroundImage(winningCard,for: .normal)
            case 2:
                tagTwoButton.setBackgroundImage(winningCard,for: .normal)
            case 3:
                tagThreeButton.setBackgroundImage(winningCard,for: .normal)
            case 4:
                tagFourButton.setBackgroundImage(winningCard,for: .normal)
            default:
                break
            }
        }
        
        for subview in view.subviews{
            if subview.tag < 5{
            subview.isUserInteractionEnabled = false
            }
        }
        scoreLabel.text = "Score: \(score)"
    }
    
    

}



