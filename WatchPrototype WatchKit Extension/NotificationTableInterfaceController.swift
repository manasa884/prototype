//
//  NotificationTableInterfaceController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/4/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import WatchKit
import Foundation


class NotificationTableInterfaceController: WKInterfaceController {

    @IBOutlet weak var tableView: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        populateData()
    }
    
    func populateData()
    {
        let icons = ["mapIconW-12","summaryIconW-12","callIconW-12","taskIconW-12","weatherIconW-12"]
        let events = ["Daily Product Status", "Call John", "Meeting with Laurie Barton", "Jake's Birthday", "Interview Peter Burke"]
        let messgages = ["Will call later", "Start without me", "Looks good!", "I will review them", "Great interview today"]
        let times = ["9:00 AM", "10:30 AM", "11:00 AM", "2:00 PM", "5:00 PM"]
 
        tableView.setNumberOfRows(events.count, withRowType: "NotificationTableRowController")
        
        for(index, value) in enumerate(events)
        {
            let row = tableView.rowControllerAtIndex(index) as! NotificationTableRowController
            row.titleLabel?.setText(value)
        }
        for(index, val) in enumerate(messgages)
        {
            let row = tableView.rowControllerAtIndex(index) as! NotificationTableRowController
            row.messageLabel?.setText(val)
        }
        for(index, valu) in enumerate(times)
        {
            let row = tableView.rowControllerAtIndex(index) as! NotificationTableRowController
            row.timeLabel?.setText(valu)
        }
        for(index, va) in enumerate(icons)
        {
            let row = tableView.rowControllerAtIndex(index) as! NotificationTableRowController
            row.cardIconImage?.setImageNamed(va)
        }

        
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
