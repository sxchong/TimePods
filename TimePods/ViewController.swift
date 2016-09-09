//
//  ViewController.swift
//  TimePods
//
//  Created by Sean Chong on 9/8/16.
//  Copyright © 2016 Sean Chong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var buttonStart: UIButton!   //the test start button
    @IBOutlet weak var buttonPause: UIButton!   //the test pause button
    
    var timer = NSTimer()
    var date = NSDate()
    var testPod = Pod(name: "jump rope", duration: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*  Method that is called every second. This method performs the logic of
        deducting time from the the active TimePod and all necessary logic
        associated with it.
    */
    func updateTick() {
        labelTime.text = String(testPod.duration)
        
        if (testPod.duration > 0) {
            testPod.duration -= 1
        } else {
            //yay the timer is over logic goes here
            labelTime.text = "Complete!"
            //TODO: set the TimePod to disabled / completed state
        }
    }

    @IBAction func buttonStartPressed(sender: UIButton) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(updateTick), userInfo: nil, repeats: true)
    }
}

