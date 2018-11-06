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
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func flipCards(_ sender: UIButton) {
        switch sender.tag {
        case 0:
          firstButton.setImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControl.State#>)
        case 1:
            
        case 2:
            
        default:
        }
    }
}

