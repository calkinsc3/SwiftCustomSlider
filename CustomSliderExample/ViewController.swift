//
//  ViewController.swift
//  CustomSliderExample
//
//  Created by Calkins, Bill on 9/2/14.
//  Copyright (c) 2014 Calkins, Bill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    let rangeSlider = RangeSlider(frame: CGRectZero)
    let honeyRangeSlider = RangeSlider(frame: CGRectZero)
    let packersRangeSlider = RangeSlider(frame: CGRectZero)
    let bearsRangeSlider = RangeSlider(frame: CGRectZero)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.addSubview(rangeSlider)
        view.addSubview(honeyRangeSlider)
        honeyRangeSlider.sliderName = "honeyRangeSlider"
        
        view.addSubview(packersRangeSlider)
        packersRangeSlider.sliderName = "packersRangeSlider"
        
        view.addSubview(bearsRangeSlider)
        bearsRangeSlider.sliderName = "bearsRangeSlider"
        
        rangeSlider.addTarget(self, action: "rangeSliderValueChanged:", forControlEvents: .ValueChanged)
        honeyRangeSlider.addTarget(self, action: "rangeSliderValueChanged:", forControlEvents: .ValueChanged)
        packersRangeSlider.addTarget(self, action: "rangeSliderValueChanged:", forControlEvents: .ValueChanged)
        bearsRangeSlider.addTarget(self, action: "rangeSliderValueChanged:", forControlEvents: .ValueChanged)
        
        
        //Set up honey range slider
        self.honeyRangeSlider.trackHighlightTintColor = UIColor.brownColor()
        self.honeyRangeSlider.curvanceousness = 1.0
        self.honeyRangeSlider.thumbTintColor = UIColor.yellowColor()
        
        //Set up Packers range slider
        self.packersRangeSlider.trackHighlightTintColor = UIColor.yellowColor()
        self.packersRangeSlider.curvanceousness = 0.0
        self.packersRangeSlider.thumbTintColor = UIColor.greenColor()
        
        //Set up Bears range slider
        self.bearsRangeSlider.trackHighlightTintColor = UIColor.blackColor()
        self.bearsRangeSlider.curvanceousness = 1.0
        self.bearsRangeSlider.thumbTintColor = UIColor.orangeColor()
        
//        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_MSEC))
//        
//        dispatch_after(time, dispatch_get_main_queue()) {
//            self.rangeSlider.trackHighlightTintColor = UIColor.redColor()
//            self.rangeSlider.curvanceousness = 0.0
//        }
//        
//        let bounds = UIScreen.mainScreen().bounds
//        let appframe = UIScreen.mainScreen().applicationFrame
        
        //println("Mainscreen bounds: x=\(bounds.origin.x), y=\(bounds.origin.y), width=\(bounds.size.width), height=\(bounds.size.height)" )
        //println("Mainscreen app frame: x=\(appframe.origin.x), y=\(appframe.origin.y), width=\(appframe.size.width), height=\(appframe.size.height)")
        
        
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 20.0
        let width = view.bounds.width - 2.0 * margin
        
        rangeSlider.frame = CGRect(x:margin, y:margin + topLayoutGuide.length, width: width, height: 31.0)
        honeyRangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length + 80, width: width, height: 31.0)
        packersRangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length + 160, width: width, height: 31.0)
        bearsRangeSlider.frame = CGRect(x: margin, y: margin + topLayoutGuide.length + 240, width: width, height: 31.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rangeSliderValueChanged(rangeSlider: RangeSlider) {
        println("\(rangeSlider.sliderName) value changed: (\(rangeSlider.lowerValue) \(rangeSlider.upperValue))")
//        println("honeyRangeSlider value changed: (\(honeyRangeSlider.lowerValue) \(honeyRangeSlider.upperValue))")
//        println("packersRangeSlider value changed: (\(packersRangeSlider.lowerValue) \(packersRangeSlider.upperValue))")
//        println("bearsRangeSlider value changed: (\(bearsRangeSlider.lowerValue) \(bearsRangeSlider.upperValue))")
    }


}

