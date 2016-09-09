//
//  Pod.swift
//  TimePods
//
//  Created by Sean Chong on 9/9/16.
//  Copyright © 2016 Sean Chong. All rights reserved.
//

import Foundation

class Pod {
    //MARK: Properties
    var name:String
    var duration:Int
    
    init() {
        name = "default_Pod"
        duration = 0
    }
    
    init(name:String) {
        self.name = name
        duration = 0
    }
    
    init(duration:Int) {
        name = "default_Pod"
        self.duration = duration
    }
    
    init(name:String, duration:Int) {
        self.name = name
        self.duration = duration
    }
    
}