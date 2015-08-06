//
//  EventTableInterfaceController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/4/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import WatchKit
import Foundation


class EventTableInterfaceController: WKInterfaceController {

    @IBOutlet var tableView: WKInterfaceTable!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        populateData()
    }
    
    func populateData()
    {
//        var halfOrange = UIColor(red: 147, green: 125, blue: 92, alpha: 1)
        let events = ["Daily Product Status", "Call John", "Meeting with Laurie Barton", "Jake's Birthday", "Interview Peter Burke"]
        let times = ["9:00 AM", "10:30 AM", "11:00 AM", "2:00 PM", "5:00 PM"]
//        let colors = [halfOrange, halfOrange, UIColor.blueColor(), halfOrange, UIColor.greenColor()]
        
        tableView.setNumberOfRows(events.count, withRowType: "EventTableRowController")
        
        for(index, value) in enumerate(events)
        {
            let row = tableView.rowControllerAtIndex(index) as! EventTableRowController
            row.titleLabel?.setText(value)
        }
        for(index, val) in enumerate(times)
        {
            let row = tableView.rowControllerAtIndex(index) as! EventTableRowController
            row.timeLabel?.setText(val)
        }
//        for(index, va) in enumerate(colors)
//        {
//            let row = tableView.rowControllerAtIndex(index) as! EventTableRowController
//            row.eventCell?.setBackgroundColor(va)
//        }


    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
