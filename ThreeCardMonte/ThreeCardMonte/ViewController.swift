//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    
    //outlets:
    //"pick a card"
    @IBOutlet weak var label1: UILabel!
    
    
    //Points:
    @IBOutlet weak var points: UILabel!
    
    var point = 0
    
    //toggle
    func toggle(){
        notEnabled(card: card1)
        notEnabled(card: card2)
        notEnabled(card: card3)
        notEnabled(card: card4)
        notEnabled(card: card5)
    }
    //change label
    func changeLabel(didWin: Int){
        if didWin == 0 { //0 = win
            label1.text = "You Win!"
        }else { // 1 = loose
            label1.text = "You Loose..😵"
        }
        toggle()
        
    }
    
    //add points
    func addPoints(){
        point += 1
        //change points
        points.text = "Points: \(point)"
    }
    //set king card
    func setKing(card: UIButton) {
        card.setImage(UIImage.init(named: "kingCard"), for: .normal)
    }
    //set three card
    func setThree(card: UIButton) {
        card.setImage(UIImage.init(named: "threeCard"), for: .normal)
    }
    
    //faceUp
    func isEnabled(card: UIButton){
        card.isEnabled = true
    }
    func notEnabled(card: UIButton){
        card.isEnabled = false
    }
    //faceDown
    func faceDown(card: UIButton){
        card.setImage(UIImage(named: "cardBackRed-1"), for: .normal)
    }
    
    //button outlets:
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var card4: UIButton!
    @IBOutlet weak var card5: UIButton!
    
    
    //points (increments when they win)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    //actions:
    @IBAction func checkIfKing(_ sender: UIButton) {
        var logoImage: [UIImage] = [
            UIImage(named: "kingCard")!,
            UIImage(named: "threeCard")!,
            UIImage(named: "threeCard")!
        ]
        logoImage = logoImage.shuffled()
        
        switch sender.tag {
        case 0:
            if logoImage[0] == UIImage(named: "kingCard")! {
                setKing(card: card1)
                addPoints()
                changeLabel(didWin: 0)
                
            } else {
                setThree(card: card1)
                notEnabled(card: card1)
                setKing(card: card2)
                changeLabel(didWin: 1)
                
                
            }
        case 1:
            if logoImage[1] == UIImage(named: "kingCard")! {
                setKing(card: card2)
                addPoints()
                changeLabel(didWin: 0)
                
            } else {
                setThree(card: card2)
                notEnabled(card: card2)
                setKing(card: card3)
                changeLabel(didWin: 1)
            }
            
        case 2:
            if logoImage[2] == UIImage(named: "kingCard")! {
                setKing(card: card3)
                addPoints()
                changeLabel(didWin: 0)
                
            } else {
                
                setThree(card: card3)
                card3.isEnabled = false
                setKing(card: card1)
                changeLabel(didWin: 1)
            }
        case 3:
            if logoImage[2] == UIImage(named: "kingCard")! {
                setKing(card: card4)
                addPoints()
                changeLabel(didWin: 0)
                
            } else {
                
                setThree(card: card4)
                notEnabled(card: card4)
                setKing(card: card1)
                changeLabel(didWin: 1)
            }
        case 4:
            if logoImage[2] == UIImage(named: "kingCard")! {
                setKing(card: card5)
                addPoints()
                changeLabel(didWin: 0)
                
            } else {
                
                setThree(card: card5)
                card3.isEnabled = false
                setKing(card: card2)
                changeLabel(didWin: 1)
            }
            
            
        default:
            card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
            card1.isEnabled = false
            
            
        }
        
    }
    

    
    // reset the game button
    @IBAction func reset(_ sender: UIButton) {
        faceDown(card: card1)
        isEnabled(card: card1)
        //card2
        faceDown(card: card2)
        isEnabled(card: card2)
        //card3
        faceDown(card: card3)
        isEnabled(card: card3)
        faceDown(card: card4)
        isEnabled(card: card4)
        faceDown(card: card5)
        isEnabled(card: card5)
        //welcome
        label1.text = "Pick a Card.. Any Card 🎩🐇"
    }
    
    
    
}

