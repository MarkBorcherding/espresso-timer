//
//  ViewController.swift
//  Espresso Timer
//
//  Created by Mark Borcherding on 12/7/15.
//  Copyright © 2015 Mark Borcherding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var display: UILabel!
    
    @IBAction func toggleTimer(sender: UIButton) {
        if(sender.currentTitle! == "Start") {
            counter = 0.0;
            sender.setTitle("Stop", forState:  UIControlState.Normal)
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "tick", userInfo: nil, repeats: true)

        } else {
            timer.invalidate()
              sender.setTitle("Start", forState:  UIControlState.Normal)
        }
    }
    var counter = 0.0
    
    var timer = NSTimer()
    
    func tick(){
        counter += 0.1
        display.text = "\(counter)s"
    }
}


