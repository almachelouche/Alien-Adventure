//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {
    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        self.texture = SKTexture(imageNamed: "BadgeTeal.png")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum BadgeAnimation : Int {
        case growAndShrink = 0
        case rotate = 1
        case shake = 2
    }
    func animation(animate :BadgeAnimation){
        switch animate {
        case .growAndShrink:
  
        let action1 = SKAction.scale(to: 0.8, duration: 1.0)
        let action2 = SKAction.scale(to: 1.1, duration: 1.0)
        let sequencedAction = SKAction.sequence([action1, action2])
        run(SKAction.repeatForever(sequencedAction))
           break
        case .rotate :
            let action = SKAction.rotate(byAngle: CGFloat(-M_PI), duration: 1.5)
            run(SKAction.repeatForever(action))
            break
        case .shake :
        let x: Float = 10
        let y: Float = 6
        let numberOfTimes = 2.0 / 0.04
        var actionsArray = [SKAction]()
    
        for _ in 1...Int(numberOfTimes) {
        let dX = Float(arc4random_uniform(UInt32(x))) - x / 2;
        let dY = Float(arc4random_uniform(UInt32(y))) - y / 2;
        let shakeAction = SKAction.moveBy(x: CGFloat(dX), y: CGFloat(dY), duration: 0.02);
        actionsArray.append(shakeAction);
        actionsArray.append(shakeAction.reversed());
        }
        let sequencedAction = SKAction.sequence(actionsArray)
        run(SKAction.repeatForever(sequencedAction))
        }
    
        let animationType = Int(arc4random_uniform(3))
        animation(animate: BadgeAnimation(rawValue: animationType)!)
    }
    
}











