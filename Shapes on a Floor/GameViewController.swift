//
//  GameViewController.swift
//  Shapes on a Floor
//
//  Created by Nicholas Lagerstedt on 3/25/16.
//  Copyright (c) 2016 Nicholas Lagerstedt. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sceneView = SCNView.init()
        self.view = sceneView
        sceneView.scene = BasicScene()
        
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(GameViewController.handleTap(_:)))
        sceneView.addGestureRecognizer(tapGesture)
        
        
    }
    
    func handleTap(gestureRecognize: UIGestureRecognizer) {
        let scnView = self.view as! SCNView
        let hitScreen = gestureRecognize.locationInView(scnView)
        let hitResults = scnView.hitTest(hitScreen, options: nil)
        
        if hitResults.count > 0 {
            print("touch captured")
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
