//
//  CustomTabBarCircle.swift
//  CustomTabBar
//
//  Created by macOS on 10/15/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class CustomTabBarCircle : UITabBar {
    private var shapeLayer: CALayer?

    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createCircle()
        shapeLayer.strokeColor = UIColor.lightGray.cgColor
        shapeLayer.fillColor = UIColor.white.cgColor
        shapeLayer.lineWidth = 1.0

        if let oldShapeLayer = self.shapeLayer {
            self.layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
        } else {
            self.layer.insertSublayer(shapeLayer, at: 0)
        }

        self.shapeLayer = shapeLayer
    }

    override func draw(_ rect: CGRect) {
        self.addShape()
    }

    func createCircle () -> CGPath {
        let height: CGFloat = 37.0
        let path = UIBezierPath()
        let centerWidth = self.frame.width / 2
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: centerWidth - height , y: 0))
        path.addArc(withCenter: CGPoint(x: centerWidth , y: 0), radius: 35, startAngle: CGFloat(Double.pi), endAngle: CGFloat(Double.pi * 2), clockwise: false)
        path.addLine(to: CGPoint(x: self.frame.width, y: 0))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.height))
        
        path.close()
        return path.cgPath
    }
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let buttonRadius: CGFloat = 35
        return abs(self.center.x - point.x) > buttonRadius || abs(point.y) > buttonRadius
    }

}
