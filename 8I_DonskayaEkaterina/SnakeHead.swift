//
//  SnakeHead.swift
//  8I_DonskayaEkaterina
//
//  Created by Ekaterina Donskaya on 24/07/2020.
//  Copyright © 2020 Ekaterina Donskaya. All rights reserved.
//

import UIKit

class SnakeHead: SnakeBodyPart {
    
    override init(atPoint point: CGPoint){
        super.init(atPoint:point)
        
        // категория - голова
        self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
        // пересекается с телом, яблоком и границей экрана
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple | CollisionCategories.Snake | CollisionCategories.SnakeBodyPart
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

