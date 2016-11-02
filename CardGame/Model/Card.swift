//
//  Card.swift
//  CardGame
//
//  Created by Brashear, Patrick on 10/25/16.
//  Copyright © 2016 Brashear, Patrick. All rights reserved.
//

import UIKit

class Card
{
    internal var backImage : UIImage
    internal var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage(named: "CardBack")!
        isFaceUp = false
    }
    
    func toString() ->String
    {
        let description = "This card is \(isFaceUp)"
        return description
    }
    
    
    func getBackImage() -> UIImage {return backImage}
    func isFacing() -> Bool {return isFaceUp}
    func setFacing(isFaceUp : Bool) {self.isFaceUp = isFaceUp}
    func setBackImage(backImage : UIImage) {self.backImage = backImage}
}