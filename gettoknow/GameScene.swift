//
//  GameScene.swift
//  gettoknow
//
//  Created by Pål Joakimsen on 30.04.2018.
//  Copyright © 2018 Pål Joakimsen. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {

    }

    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
  
    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
   
        let sceneTwo = SceneTwo(fileNamed: "SceneTwo")
        sceneTwo?.scaleMode = .aspectFill
        self.view?.presentScene(sceneTwo!, transition: SKTransition.fade(withDuration: 0.5))
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
