//
//  ViewController.swift
//  Three Card Monty
//
//  Created by Michelle Cueva on 7/29/19.
//  Copyright © 2019 Michelle Cueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var B1: UIButton!
    
    @IBOutlet weak var B2: UIButton!
    
    @IBOutlet weak var B3: UIButton!
    
    @IBOutlet weak var Text: UILabel!
    
    
    let kingImage = UIImage(named: "king-spades")
    let spades8 = UIImage(named: "8_of_spades")
    let hearts10 = UIImage(named: "10_of_hearts")
    let backOfCard = UIImage(named: "back_of_card")
    
    var array: [UIImage] = [
        UIImage(named: "king-spades")!,
        UIImage(named: "8_of_spades")!,
        UIImage(named: "10_of_hearts")!
    ].shuffled()
   
   
    
    
    @IBAction func FirstCard(_ sender: UIButton) {
        B1.setImage(array[0], for: UIControl.State.normal)
        
        didIWin(position: 0)
      
    }
    
    
    @IBAction func SecondCard(_ sender: UIButton) {
      
        B2.setImage(array[1], for: UIControl.State.normal)
        
        didIWin(position: 1)
        
    }
    
    @IBAction func ThirdCard(_ sender: UIButton) {
        
        B3.setImage(array[2], for: UIControl.State.normal)
        
        didIWin(position: 2)

    }
    
    
    @IBAction func BackToDefault(_ sender: UIButton) {
        B1.setImage(backOfCard, for: UIControl.State.normal)
        B2.setImage(backOfCard, for: UIControl.State.normal)
        B3.setImage(backOfCard, for: UIControl.State.normal)
        array = array.shuffled()
        
        self.Text.text = "Pick a card, any card!"
    }
    
    func revealKing()  {
        for (index, value) in array.enumerated() where value == kingImage {
            if index == 0 {
                B1.setImage(array[0], for: UIControl.State.normal)
            } else if index == 1 {
                B2.setImage(array[1], for: UIControl.State.normal)
            } else {
                B3.setImage(array[2], for: UIControl.State.normal)
            }
        }
    }
    
    func didIWin(position: Int) {

        if array[position] == kingImage {
            self.Text.text = "You win!"
        } else {
            self.Text.text = "You lose."
            revealKing()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

}

