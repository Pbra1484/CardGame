//
//  PlayingCard.swift
//  CardGame
//
//  Created by Brashear, Patrick on 10/25/16.
//  Copyright © 2016 Brashear, Patrick. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    {
        get
        {
            return selfrank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
        
    }
    
    override init()
    {
        super.init()
        rank = 0
        suit = ""
        color = UIColor()
    }

    func getRank() -> Int {return rank}
    func getSuit() -> String {return suit}
    func getColor() -> UIColor {return color}
    
    
    override func toString() -> String
    {
        let backStatus : String
        if super.isFacing()
        {
            backStatus = " is face up"
        }
        else
        {
            backStatus = " is face down"
        }
        
        let description = "The rank is \(rank) the suit is \(suit) and the color is \(color) and \(backStatus)"
        
        return description
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}