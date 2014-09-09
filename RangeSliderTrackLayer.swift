//
//  RangeSliderTrackLayer.swift
//  CustomSliderExample
//
//  Created by Calkins, Bill on 9/5/14.
//  Copyright (c) 2014 Calkins, Bill. All rights reserved.
//

import UIKit
import QuartzCore

class RangeSliderTrackLayer: CALayer {
    weak var rangeSlider:RangeSlider?
    
    override func drawInContext(ctx: CGContext!) {
        if let slider = rangeSlider {
            //Clip
            let cornerRadius = bounds.height * slider.curvanceousness / 2.0
            let path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
            CGContextAddPath(ctx, path.CGPath)
            
            //Fill the track
            CGContextSetFillColorWithColor(ctx, slider.trackTintColor.CGColor)
            CGContextAddPath(ctx, path.CGPath)
            CGContextFillPath(ctx)
            
            //Fill the highlited range
            CGContextSetFillColorWithColor(ctx, slider.trackHighlightTintColor.CGColor)
            let lowerValuePostion = CGFloat(slider.positionForValue(slider.lowerValue))
            let upperValuePostion = CGFloat(slider.positionForValue(slider.upperValue))
            let rect = CGRect(x: lowerValuePostion, y: 0.0, width: upperValuePostion - lowerValuePostion, height: bounds.height)
            CGContextFillRect(ctx, rect)
    
        }
    }
   
}
