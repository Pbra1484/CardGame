//
//  StupidGame.swift
//  CardGame
//
//  Created by Brashear, Patrick on 11/11/16.
//  Copyright © 2016 Brashear, Patrick. All rights reserved.
//

import Foundation

class StupidGame
{
    
    internal var gameDeck1 : PlayingCardDeck
    internal var gameDeck2 : PlayingCardDeck
    internal var points : Int
    init()
    {
        gameDeck1 = PlayingCardDeck()
        gameDeck2 = PlayingCardDeck()
        points = 0
    }
    
    func gameLoop() -> Void
    {
        if let card1 = gameDeck1.drawRandomCard() as? PlayingCard
        {
            
        }
        else
        {
            
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    
}
