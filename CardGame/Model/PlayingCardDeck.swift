//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Brashear, Patrick on 10/31/16.
//  Copyright © 2016 Brashear, Patrick. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
 
    
        override init()
        {
            super.init()
            
            for suit in PlayingCard.validSuits()
            {
                for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
                {
                    let tempCard = PlayingCard(withRank: rank, ofSuit:suit)
                    cards.append (tempCard)
                    
                }
            }
        }
    
    func orderDeck() -> Void
    {
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
            {
                let index = cards.indexOf({($0 as! PlayingCard).suit == suit && ($0 as! PlayingCard).rank == rank})
                let tempCard = cards.removeAtIndex(index!) as! PlayingCard
                temp.append(tempCard)
            }
        }
    }

    
}