//
//  ViewController.swift
//  SpritekitCircleAnimation
//
//  Created by claudio Cavalli on 12/03/2019.
//  Copyright © 2019 claudio Cavalli. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        makeSkView()
    }
    func makeSkView(){
        let skView = SKView(frame: view.frame)
        skView.presentScene(makeSkScene())
        view.addSubview(skView)
    }
    func makeSkScene()-> GameScene{
        let gameScene = GameScene()
        gameScene.size = view.frame.size
        gameScene.position = view.frame.origin
        return gameScene
    }
}
