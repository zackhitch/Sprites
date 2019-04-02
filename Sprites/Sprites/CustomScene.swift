//
//  CustomScene.swift
//  Sprites
//
//  Created by Zack Hitchcock on 4/1/19.
//  Copyright © 2019 Zack Hitchcock. All rights reserved.
//

import UIKit
import SpriteKit

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0.5...1),
                       green: .random(in: 0.5...1),
                       blue: .random(in: 0.5...1),
                       alpha: 1.0)
    }
}


class CustomScene: SKScene {
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !touches.isEmpty, let touch = touches.first
            else { return }
        
        // Work with your touch here
        let node = SKShapeNode(circleOfRadius: 8)
        node.fillColor = .random
        node.position = touch.location(in: self)
        addChild(node)
        
        let scaleStart = SKAction.scale(to: 1.3, duration: 0.5)
        let scaleEnd = SKAction.scaleX(to: 1, duration: 0.5)
        let sequenceScale = SKAction.sequence([scaleStart, scaleEnd])
        
        
        node.run(sequenceScale)
    }
}
