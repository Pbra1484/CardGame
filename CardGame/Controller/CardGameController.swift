//
//  CardGameController.swift
//  CardGame
//
//  Created by Brashear, Patrick on 10/27/16.
//  Copyright © 2016 Brashear, Patrick. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    private lazy var clickCount = Int()
    private lazy var cardDeck = PlayingCardDeck()
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!



    override func viewDidLoad() -> Void
    {
    }
    @IBAction func cardCick(sender: UIButton)
    {
        clickCount += 1
        
        let content = "Clcked \(clickCount) times"
        
        if let currentCard = cardDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.rank) \(currentCard.suit)", forState: UIControlState.Normal)
        }
        else
        {
            cardButton.setTitle("deck over", forState: UIControlState.Normal)
        }
        
        cardLabel.text = content
        
    }
}
