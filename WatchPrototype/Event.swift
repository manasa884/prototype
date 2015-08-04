//
//  Event.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/3/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import Foundation

class Event
{
    var name = " " //Event name
    var date = " " //Event date
    var time = " " //Event time
    
    init(name: String, date: String, time: String)
    {
        self.name = name
        self.date = date
        self.time = time
    }

}