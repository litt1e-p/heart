//
//  BezierHeartViewController.swift
//  heart-swift3
//
//  Created by litt1e-p on 2017/2/14.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

import UIKit

class BezierHeartViewController: UIViewController
{
    fileprivate var shapeLayer: CAShapeLayer = CAShapeLayer()
    fileprivate var t: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        drawShapeLayerHeart()
    }
    
    fileprivate func drawShapeLayerHeart() {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 115.5, y: 119.5))
        bezierPath.addCurve(to: CGPoint(x: 177.5, y: 25.5), controlPoint1: CGPoint(x: 197.5, y: 71.5), controlPoint2: CGPoint(x: 177.5, y: 25.5))
        bezierPath.addCurve(to: CGPoint(x: 150.5, y: 1.5), controlPoint1: CGPoint(x: 177.5, y: 25.5), controlPoint2: CGPoint(x: 168.5, y: 5.5))
        bezierPath.addCurve(to: CGPoint(x: 115.5, y: 25.5), controlPoint1: CGPoint(x: 132.5, y: -2.5), controlPoint2: CGPoint(x: 115.5, y: 25.5))
        bezierPath.addCurve(to: CGPoint(x: 77.7, y: 1.68), controlPoint1: CGPoint(x: 115.5, y: 25.5), controlPoint2: CGPoint(x: 101.14, y: -6.4))
        bezierPath.addCurve(to: CGPoint(x: 52.68, y: 39.49), controlPoint1: CGPoint(x: 54.26, y: 9.75), controlPoint2: CGPoint(x: 52.68, y: 38.5))
        bezierPath.addCurve(to: CGPoint(x: 115.5, y: 119.5), controlPoint1: CGPoint(x: 52.68, y: 40.48), controlPoint2: CGPoint(x: 47.14, y: 72.86))
        bezierPath.close()
        
        shapeLayer.frame       = CGRect(x: view.center.x - 120, y: view.center.y - 200, width: 400, height: 400)
        shapeLayer.strokeColor = UIColor(red: 250.0/255.0, green: 153.0/255.0, blue: 223.0/255.0, alpha: 1).cgColor
        shapeLayer.fillColor   = UIColor.white.cgColor
        shapeLayer.lineJoin    = "miter"
        shapeLayer.lineCap     = "square"
        shapeLayer.path        = bezierPath.cgPath
        shapeLayer.lineWidth   = 10.0
        view.layer.addSublayer(shapeLayer)
        addAnimation(shapeLayer)
    }
    
    fileprivate func addAnimation(_ layer: CALayer) {
        let stokeStartAnimate       = CABasicAnimation(keyPath: "strokeStart")
        stokeStartAnimate.fromValue = -5.5
        stokeStartAnimate.toValue   = 1.0
        
        let stokeEndAnimate         = CABasicAnimation(keyPath: "strokeEnd")
        stokeEndAnimate.fromValue   = 0.0
        stokeEndAnimate.toValue     = 1.5
        
        let animateGroup            = CAAnimationGroup()
        animateGroup.duration       = 2.0
        animateGroup.repeatCount    = HUGE
        animateGroup.animations     = [stokeStartAnimate, stokeEndAnimate]
        shapeLayer.add(animateGroup, forKey: "little p")
    }
}

