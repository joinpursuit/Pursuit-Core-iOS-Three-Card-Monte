//
//  ThreeCardMonte.swift
//  ThreeCardMonte
//
//  Created by Howard Chang on 10/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
import UIKit

final class ThreeCardMonte {
    var cards: [Cards] = [.cardBackRed,.kingCard,.threeCard]
    var cardsFlipped = false
    var cardOne: Cards
    var middleCard: Cards
    var cardThree: Cards
   
    init() {
        cards = cards.shuffled()
        cardOne = cards[0]
        middleCard = cards[1]
        cardThree = cards[2]
    }
    func cardShuffle() {
        cards = cards.shuffled()
        cardOne = cards[0]
        middleCard = cards[1]
        cardThree = cards[2]
    }
}
