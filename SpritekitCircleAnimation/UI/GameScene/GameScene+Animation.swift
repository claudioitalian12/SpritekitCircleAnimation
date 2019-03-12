//
//  GameScene+Animation.swift
//  SpritekitCircleAnimation
//
//  Created by claudio Cavalli on 12/03/2019.
//  Copyright © 2019 claudio Cavalli. All rights reserved.
//

import SpriteKit

extension GameScene{
    func rotateAnimation(skLabel: SKLabelNode) {
        let rotateAction = SKAction.rotate(byAngle: CGFloat(Double.pi), duration:1)
        skLabel.run(SKAction.repeatForever(rotateAction))
    }
    func scaleAnimation(skLabel: SKLabelNode) {
        let scaleAction = SKAction.scale(to: 1.0, duration: 0.5)
        skLabel.run(scaleAction)
    }
    func moveAnimation(skLabel: SKLabelNode, location: CGPoint) {
        let moveAction = SKAction.move(to: location, duration: 1)
        moveAction.timingMode = SKActionTimingMode.easeInEaseOut
        skLabel.run(moveAction)
    }
}

