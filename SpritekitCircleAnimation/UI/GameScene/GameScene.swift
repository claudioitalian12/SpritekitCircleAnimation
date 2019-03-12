//
//  GameScene.swift
//  SpritekitCircleAnimation
//
//  Created by claudio Cavalli on 12/03/2019.
//  Copyright © 2019 claudio Cavalli. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let colors = [UIColor.green,UIColor.purple,UIColor.orange,
                  UIColor.red,UIColor.cyan,UIColor.cyan]
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        makeTextLabels(text: "i", location: touches.first!.location(in: self))
    }
    func makeTextLabels(text:String, location: CGPoint) {
        for i in 0 ..< 20{
            let skLabel = makeLabel(text: text, fontSize: 65, color: colors.randomElement()!, scale: 0.3, position: randomPosition())
            makeAnimation(skLabel: skLabel, location: location)
            self.run(SKAction.wait(forDuration: TimeInterval(Double(i)*0.1))) {
                self.addChild(skLabel)
            }
        }
    }
    func randomPosition()->CGPoint {
        return  CGPoint(x:  CGFloat.random(in: view!.frame.minX...view!.frame.maxX), y:  CGFloat.random(in: view!.frame.minY...view!.frame.maxY))
    }
    func makeLabel(text: String, fontSize: CGFloat, color: UIColor,scale: CGFloat, position: CGPoint) -> SKLabelNode {
        let skLabel = SKLabelNode(fontNamed:"")
        skLabel.text = text
        skLabel.fontSize = fontSize
        skLabel.fontColor = color
        skLabel.position = position
        skLabel.setScale(scale)
        return skLabel
    }
    func makeAnimation(skLabel: SKLabelNode, location: CGPoint) {
        rotateAnimation(skLabel: skLabel)
        scaleAnimation(skLabel: skLabel)
        moveAnimation(skLabel: skLabel,location: location)
    }
}
