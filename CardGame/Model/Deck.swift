//
//  Deck.swift
//  CardGame
//
//  Created by Brashear, Patrick on 10/31/16.
//  Copyright © 2016 Brashear, Patrick. All rights reserved.
//

import Foundation

class Deck
{
    internal lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        //Create temp vaiable to hold cards
        var tempDeck = [Card]()
        
        //Repeat until cards is empty
        while self.cards.count > 0
        {
            //Get a random nubmer  between 00 and cards.count-1
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            
            //Remove the card at th index from te deck
            let removedCard = cards.removeAtIndex(randomIndex)
            
            //Place that card in the temporary array
            tempDeck.append(removedCard)
        }
        
        //Replace the data meber with updated data
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card?
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            return cards.removeAtIndex(randomIndex)
        }
        else
        {
            return nil
        }
    }
}