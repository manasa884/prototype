//
//  InterfaceController.swift
//  WatchPrototype WatchKit Extension
//
//  Created by Manasa Tipparam on 8/3/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var eventIconImage: WKInterfaceImage!
    
    @IBOutlet weak var notifIconImage: WKInterfaceImage!
    
//    @IBOutlet weak var sumCard: WKInterfaceImage!
//    @IBOutlet weak var callCard: WKInterfaceImage!
//    @IBOutlet weak var mapCard: WKInterfaceImage!
//    @IBOutlet weak var weatherCard: WKInterfaceImage!
//    @IBOutlet weak var taskCard: WKInterfaceImage!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        eventIconImage.setImageNamed("eventsIcon-06")
        notifIconImage.setImageNamed("notifIcon-06")
//        sumCard.setImageNamed("summaryCardW-08")
//        callCard.setImageNamed("callCardW-01")
//        mapCard.setImageNamed("mapCardW-02")
//        weatherCard.setImageNamed("weatherCardW-11")
//        taskCard.setImageNamed("taskCardW-10")

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
