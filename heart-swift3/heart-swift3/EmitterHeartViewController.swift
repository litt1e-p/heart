//
//  EmitterHeartViewController.swift
//  heart-swift3
//
//  Created by litt1e-p on 2017/2/14.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

import UIKit

class EmitterHeartViewController: UIViewController
{
    var emitterLayer:CAEmitterLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialViews()
    }
    
    func initialViews() {
        emitterLayer                 = CAEmitterLayer()
        self.view.layer.addSublayer(emitterLayer)
        emitterLayer.backgroundColor = UIColor.black.cgColor
        let screenWidth              = view.bounds.size.width
        emitterLayer.frame           = CGRect(x: 0, y: 0, width: screenWidth, height: screenWidth)
        emitterLayer.position        = view.center
        emitterLayer.emitterPosition = CGPoint(x: emitterLayer.bounds.size.width/2, y: emitterLayer.bounds.size.height/2)
        emitterLayer.renderMode      = kCAEmitterLayerUnordered;
        emitterLayer.emitterShape    = kCAEmitterLayerPoint;
        emitterLayer.emitterSize     = CGSize(width: 200, height: 200);

        let emitterCell              = CAEmitterCell()
        emitterCell.scale            = 0.5
        emitterCell.contents         = UIImage(named: "heart")?.cgImage
        emitterCell.birthRate        = 100
        emitterCell.lifetime         = 5
        emitterCell.velocity         = 80
        emitterCell.velocityRange    = 200
        emitterCell.alphaSpeed       = -0.4
        emitterCell.emissionRange    = CGFloat(M_PI * 2.0)
        emitterLayer.emitterCells    = [emitterCell]
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch: UITouch = touches.first {
            let location = touch.location(in: view)
            print( "x:\(location.x) y:\(location.y)" )
            emitterLayer.emitterPosition = location
        }
    }
}
