import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonCard1: UIButton!
    @IBOutlet weak var buttonCard2: UIButton!
    @IBOutlet weak var buttonCard3: UIButton!
    @IBOutlet weak var labelArea: UILabel!
    @IBOutlet weak var playAgainElement: UIButton!
    
    let kingImage = UIImage.init(named: "kingCard")
    let threeImage = UIImage.init(named: "threeCard")
    let backImage = UIImage.init(named: "cardBackRed")
    
    // Declare an initialize a variable to hold the random number
    var winningRandomNumber:Int = 0
    
    // This action is connected to the three cards
    @IBAction func cardSelected(_ sender: UIButton) {
        checkSelectedCard(pressedButton: sender)
    }
    
    /*This action is connected to the play again button to ask the player
     if they want to play again */
    @IBAction func playAgainAction(_ sender: UIButton) {
        startGame()
    }
    
    /* Checks the selected action from any of the three buttons
     If the sender tag (0, 1 or 2) is equal to the selected random number ( between 0 and 2)
     the user won.
      Send the sender (button) as param to the function to
     assing the either win (king) or lost (three) card image
     And askt to play again */
    private func checkSelectedCard(pressedButton: UIButton) -> Void {
        if (winningRandomNumber == pressedButton.tag) {
            labelArea.text = "A winner is you!"
        }else{
            pressedButton.setImage(threeImage, for: .normal)
            labelArea.text = "You Lost!"
        }
        
        revealWinner()
        askToPlayAgain()
    }
    
    private func revealWinner() -> Void {
        if let winningButton = view.viewWithTag(winningRandomNumber) as? UIButton
        {
            winningButton.setImage(kingImage, for: .normal)
        }
    }
    
    private func askToPlayAgain() -> Void {
        disableCards()
        showPlayAgain()
    }
    
    private func disableCards() -> Void {
        buttonCard1.isEnabled = false
        buttonCard2.isEnabled = false
        buttonCard3.isEnabled = false
    }
    
    private func resetCards() -> Void {
        buttonCard1.setImage(backImage, for: .normal)
        buttonCard2.setImage(backImage, for: .normal)
        buttonCard3.setImage(backImage, for: .normal)
    }
    
    private func enableCards() -> Void {
        buttonCard1.isEnabled = true
        buttonCard2.isEnabled = true
        buttonCard3.isEnabled = true
    }
    
    private func askToPickACard() -> Void {
        labelArea.text = "Pick a Card. Any card..."
    }
    
    private func showPlayAgain() -> Void {
        playAgainElement.isHidden = false
    }
    
    private func hidePlayAgainLabel() -> Void {
        playAgainElement.isHidden = true
    }
    
    private func selectRandomNumber() -> Void {
        winningRandomNumber = Int.random(in: 1...3)
    }
    
    private func startGame() -> Void {
        selectRandomNumber()
        hidePlayAgainLabel()
        askToPickACard()
        resetCards()
        enableCards()
    }
    
    private func setUpTags() -> Void {
        buttonCard1.tag=1
        buttonCard2.tag=2
        buttonCard3.tag=3
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTags()
        startGame()
    }
}
