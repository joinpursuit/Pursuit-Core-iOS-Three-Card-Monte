//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstCard: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    @IBAction func cardToBePicked(_ sender: UIButton) {
//        _ = Int.random(in: 0...2)
        
        switch sender.tag {
        case 0:
            sender.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
            displayLabel.text = "Wrong"
        case 1:
            sender.setImage(UIImage.init(named: "threeCard"), for: .normal)
            displayLabel.text = "Wrong"
        case 2:
            sender.setImage(UIImage.init(named: "kingCard"), for: .normal)
            displayLabel.text = "Correct!"
        default:
            print("Wrong")
        }
    }
    
}


//import UIKit
//
//class ViewController: UIViewController {
//
//    //outlets
//    @IBOutlet weak var displayLabel: UILabel!
//    @IBOutlet weak var viewerColor: UIView!
//
//    //button outlets
//    @IBOutlet weak var redButton: UIButton!
//
//    @IBOutlet weak var greenButton: UIButton!
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        viewerColor.backgroundColor = .blue
//        //        view.backgroundColor = UIColor.green
//
//        // disable
//        redButton.isEnabled = false
//        //        greenButton.isEnabled = false
//
//        //change image on a UIBotton
//        redButton.setImage(UIImage.init(named: "lime"), for: .normal)
//    }
//
//    //actions
//    @IBAction func colorWillChange(_ sender: UIButton) {
//        var newColor : (color: UIColor? , name: String)?
//        switch sender.tag {
//        case 0:
//            newColor = (.red, "Red")
//        case 1:
//            newColor = (.green, "Green")
//        case 2:
//            newColor = (.blue, "Blue")
//        default:
//            print("invalid tag")
//        }
//        if let newColorType = newColor {
//            view.backgroundColor = newColorType.color
//            displayLabel.text = "The background color is \(newColorType.name)"
//        }
//    }
//
//}
