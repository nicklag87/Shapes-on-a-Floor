//
//  BasicScene.swift
//  Shapes on a Floor
//
//  Created by Nicholas Lagerstedt on 3/25/16.
//  Copyright © 2016 Nicholas Lagerstedt. All rights reserved.
//

import UIKit
import SceneKit

class BasicScene: SCNScene {
    
    
    override init() {
        super.init()
        
        let geometryPyr = SCNPyramid(width: 1.0, height: 1.0, length: 1.0)
        let pyrNode = SCNNode(geometry: geometryPyr)
        pyrNode.position = SCNVector3(0.0, 4.0, -4.0)
        self.rootNode.addChildNode(pyrNode)
        
        geometryPyr.firstMaterial?.diffuse.contents = UIColor.blueColor()
        pyrNode.physicsBody = SCNPhysicsBody(type: .Dynamic, shape: .None)
        
        
        
        let floor = SCNFloor()
        let floorNode = SCNNode(geometry: floor)
        floorNode.position = SCNVector3(0.0, -2.0, 0.0)
        self.rootNode.addChildNode(floorNode)
        
        floorNode.physicsBody = SCNPhysicsBody(type: .Static, shape: .None)
        
        // set up camera
        
        let cameraNode = SCNNode()
        cameraNode.position = SCNVector3(0.0, 0.0, 2.0)
        cameraNode.camera = SCNCamera()
        self.rootNode.addChildNode(cameraNode)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
