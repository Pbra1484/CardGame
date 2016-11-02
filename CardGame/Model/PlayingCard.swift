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
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor
    
    override init()
    {
        rank = 0
        suit = String()
        color = UIColor.blackColor()
         super.init()
    }
    
    init(withRank: Int, ofSuit:String)
    {
        color = UIColor.blackColor()
        suit = ofSuit
        rank = withRank
        super.init()
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
    
    //The class modifier mke is so the method is visible without an instace 
    //You would calll it by ClassName.method()
    //In this cas PlayingCard.CalidRanks()
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count-1
    }
    
    class func validSuits() -> [String]
    {
        return ["♠️","♣️","♦️","♥️"]
    }
    
    
    
    
    
    
    
    
    
    
    
}