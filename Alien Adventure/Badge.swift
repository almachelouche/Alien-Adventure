//
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    
    init(requestType: UDRequestType) {
        self.requestType = requestType
        super.init(texture: nil, color: UIColor.clear, size: CGSize(width: 48, height: 48))
        let badge = SKSpriteNode (imageNamed: "BadgeMagenta.png")
        badge.position = CGPoint(x:70, y:10)
        badge.size = CGSize(width: 48, height: 48)
        self.addChild(badge)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
