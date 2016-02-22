//
//  SwordImage.swift
//  WatchSword
//
//  Created by Psidium on 2/21/16.
//  Copyright © 2016 Psidium. All rights reserved.
//

import Foundation
import WatchKit

final class SwordImage : UIImage {
    
    override init() {
        // Create a graphics context
        let size = CGSizeMake(150, 150)
        UIGraphicsBeginImageContext(size)
        let context = UIGraphicsGetCurrentContext()
        UIGraphicsPushContext(context!)
        
        
        //// Color Declarations
        let color3 = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let color2 = UIColor(red: 0.812, green: 0.812, blue: 0.812, alpha: 1.000)
        let color0 = UIColor(red: 0.986, green: 0.000, blue: 0.041, alpha: 1.000)
        let color1 = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1.000)
        
        //// Page-1
        //// Group 3
        //// Oval-1 Drawing
        let oval1Path = UIBezierPath(ovalInRect: CGRectMake(5, 5, 185, 185))
        color0.setStroke()
        oval1Path.lineWidth = 10
        oval1Path.stroke()
        
        
        //// Path-2 Drawing
        let path2Path = UIBezierPath()
        path2Path.moveToPoint(CGPointMake(40.8, 160.09))
        path2Path.addLineToPoint(CGPointMake(53.9, 146.99))
        path2Path.addLineToPoint(CGPointMake(70.7, 163.78))
        path2Path.addLineToPoint(CGPointMake(78.46, 156.02))
        path2Path.addLineToPoint(CGPointMake(41.41, 118.97))
        path2Path.addLineToPoint(CGPointMake(33.67, 126.71))
        path2Path.addLineToPoint(CGPointMake(44.84, 137.88))
        path2Path.addLineToPoint(CGPointMake(32.09, 150.63))
        path2Path.addLineToPoint(CGPointMake(40.8, 160.09))
        path2Path.closePath()
        path2Path.miterLimit = 4;
        
        path2Path.usesEvenOddFillRule = true;
        
        color2.setFill()
        path2Path.fill()
        color1.setStroke()
        path2Path.lineWidth = 1
        path2Path.stroke()
        
        
        //// Path-3 Drawing
        let path3Path = UIBezierPath()
        path3Path.moveToPoint(CGPointMake(45.25, 122.81))
        path3Path.addLineToPoint(CGPointMake(150.72, 38.74))
        path3Path.addLineToPoint(CGPointMake(59.79, 137.62))
        path3Path.addLineToPoint(CGPointMake(45.25, 122.81))
        path3Path.closePath()
        path3Path.miterLimit = 4;
        
        path3Path.usesEvenOddFillRule = true;
        
        color2.setFill()
        path3Path.fill()
        color1.setStroke()
        path3Path.lineWidth = 1
        path3Path.stroke()
        
        
        //// Path-4 Drawing
        let path4Path = UIBezierPath()
        path4Path.moveToPoint(CGPointMake(75.15, 150.82))
        path4Path.addLineToPoint(CGPointMake(151.1, 38.83))
        path4Path.addLineToPoint(CGPointMake(60.55, 137.11))
        path4Path.addLineToPoint(CGPointMake(75.15, 150.82))
        path4Path.closePath()
        path4Path.miterLimit = 4;
        
        path4Path.usesEvenOddFillRule = true;
        
        color3.setFill()
        path4Path.fill()
        color1.setStroke()
        path4Path.lineWidth = 1
        path4Path.stroke()
        
        
        
        // Convert to UIImage
        let cgimage = CGBitmapContextCreateImage(context)
        
        super.init(CGImage: cgimage!)
        // End the graphics context
        UIGraphicsPopContext()
        UIGraphicsEndImageContext()
    }

    required convenience init(imageLiteral name: String) {
        self.init()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}