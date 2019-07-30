## Three Card Monte Lab


## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link to of your Fork on Canvas and submit


## Overview

The name of the game is [Three Card Monte](https://en.wikipedia.org/wiki/Three-card_Monte)


Create three "cards" made from UIButtons. 

When the user selects the winning card, the King, tell the user they have won. 

When the user selects the incorrect card, reveal the card they picked and the King. Tell the user they lost.  


Your app should include a new game button that returns the cards to the face-down position. 

Your final app should look like the gif below. 


### Stage 1: 

Create three buttons. If the user selects the first button on the right then tell the user they won. If the user selects any other button, then display to the user they lose. 

After a user clicks on a button, disable all buttons until the new game button is pressed. Reset the text to an introductory message.

### Stage 2: 

Make the winning button be randomly selected.  Each game should have a randomly generated winning card.

### Stage 3: 

Add images to the button to make them look like cards.  Build the app to look like the example.


### Final product

![](https://media.giphy.com/media/l378eqDtQVUCawcTu/giphy.gif)

### Bonus 1: 

Add a label that saves the users score. 

### Bonus 2:

Add a fourth card

### Bonus 3:

Add a fifth card

### Bonus 4:

Have 3 different new game buttons:

- New 3-card Game
- New 4 card Game
- New 5-card Game

That each begin a game of the appropriate type, hiding unused cards as necessary.

This one worked, for the basic game, no random:

```swift
import UIKit

class ViewController: UIViewController {

@IBOutlet weak var displayText: UILabel!

@IBOutlet weak var cardLeft: UIButton!

@IBOutlet weak var cardMiddle: UIButton!

@IBOutlet weak var cardRight: UIButton!

@IBOutlet weak var resetButton: UIButton!

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
}



@IBAction func threeOnTheLeft(_ sender: UIButton) {

self.displayText.text = "Sorry, kid, not the King!"
self.cardLeft.setImage(UIImage.init(named: "threeCard"), for: .normal)
self.cardMiddle.setImage(UIImage.init(named: "kingCard"), for: .normal)

self.cardMiddle.isEnabled = false
self.cardRight.isEnabled = false

}

@IBAction func kingInTheMiddle(_ sender: UIButton) {

self.displayText.text = "You win, that's the King!"
self.cardMiddle.setImage(UIImage.init(named: "kingCard"), for: .normal)

self.cardLeft.isEnabled = false
self.cardRight.isEnabled = false
}

@IBAction func threeOnTheRight(_ sender: UIButton) {

self.displayText.text = "Sorry, kid, not the King!"
self.cardRight.setImage(UIImage.init(named: "threeCard"), for: .normal)
self.cardMiddle.setImage(UIImage.init(named: "kingCard"), for: .normal)

self.cardLeft.isEnabled = false
self.cardMiddle.isEnabled = false
}


@IBAction func newGame(_ sender: UIButton) {
self.displayText.text = "Hey kid, wanna win some money?"
self.cardLeft.setImage(UIImage.init(named: "cardBackRed"), for: .normal)

self.cardMiddle.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
self.cardRight.setImage(UIImage.init(named: "cardBackRed"), for: .normal)

self.cardLeft.isEnabled = true
self.cardMiddle.isEnabled = true
self.cardRight.isEnabled = true
}

}
```

This one, to make it random, did not work:

```swift
import UIKit

class ViewController: UIViewController {


@IBOutlet weak var displayText: UILabel!

@IBOutlet weak var cardLeft: UIButton!

@IBOutlet weak var cardMiddle: UIButton!

@IBOutlet weak var cardRight: UIButton!

@IBOutlet weak var resetButton: UIButton!

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
}


func initGame() {
cardLeft.isEnabled = true
cardMiddle.isEnabled = true
cardRight.isEnabled = true
displayText.text = "Hey kid, wanna win some money?"
cardLeft.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
cardMiddle.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
cardRight.setImage(UIImage.init(named: "cardBackRed"), for: .normal)

}

func winner() {
displayText.text = "You win, that's the King, baby!"
setCards()
}

func loser() {
displayText.text = "You lost, that's the King, kid!"
setCards()
}

func setCards() {
cardLeft.isEnabled = false
cardMiddle.isEnabled = false
cardRight.isEnabled = false
}

@IBAction func threeCards(_ sender: UIButton)
{
let guessNum = Int.random(in: 1...3)
switch sender.tag {
case 1 where sender.tag == guessNum:
cardLeft.setImage(UIImage.init(named: "kingCard"), for: .normal)
winner()
case 2 where sender.tag == guessNum:
cardMiddle.setImage(UIImage.init(named: "kingCard"), for: .normal)
winner()
case 3 where sender.tag == guessNum:
cardRight.setImage(UIImage.init(named: "kingCard"), for: .normal)
winner()
default:
loser()
switch guessNum {
case 1:
if guessNum == 2 {
cardLeft.setImage(UIImage.init(named: "threeCard"), for: .normal)
cardMiddle.setImage(UIImage.init(named: "kingCard"), for: .normal)
} else if guessNum == 3 {
cardLeft.setImage(UIImage.init(named: "threeCard"), for: .normal)
cardRight.setImage(UIImage.init(named: "kingCard"), for: .normal)
}

case 2:
if guessNum == 1 {
cardMiddle.setImage(UIImage.init(named: "threeCard"), for: .normal)
cardLeft.setImage(UIImage.init(named: "kingCard"), for: .normal)
} else if guessNum == 3 {
cardMiddle.setImage(UIImage.init(named: "threeCard"), for: .normal)
cardRight.setImage(UIImage.init(named: "kingCard"), for: .normal)
}
case 3:
if guessNum == 1 { cardRight.setImage(UIImage.init(named: "threeCard"), for: .normal)
cardLeft.setImage(UIImage.init(named: "kingCard"), for: .normal)

} else if guessNum == 2 {
cardRight.setImage(UIImage.init(named: "threeCard"), for: .normal)
cardMiddle.setImage(UIImage.init(named: "kingCard"), for: .normal)
}
default:
break
}
}
}
@IBAction func newGame(_ sender: UIButton) {
initGame()
}
}
```
