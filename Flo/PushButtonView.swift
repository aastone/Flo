//
//  PushButtonView.swift
//  Flo
//
//  Created by Wang, Yipu on 1/12/17.
//  Copyright © 2017 stone. All rights reserved.
//

import UIKit

@IBDesignable

class PushButtonView: UIButton {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    @IBInspectable var fillColor: UIColor = UIColor.red
    @IBInspectable var isAddButton: Bool = true
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()


        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        let plusPath = UIBezierPath()
        
        plusPath.lineWidth = plusHeight
        
        plusPath.move(to: CGPoint(x: bounds.width/2 - plusWidth/2, y: bounds.height/2))
        plusPath.addLine(to: CGPoint(x: bounds.width/2 + plusWidth/2, y: bounds.height/2))
        
        if isAddButton {
            plusPath.move(to: CGPoint(x: bounds.width/2, y: bounds.height/2 - plusWidth/2))
            plusPath.addLine(to: CGPoint(x: bounds.width/2, y: bounds.width/2+plusWidth/2))
        }
        
        UIColor.white.setStroke()
        plusPath.stroke()
        
    }
 
}
