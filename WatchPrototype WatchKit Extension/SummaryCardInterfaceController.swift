//
//  SummaryCardInterfaceController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/5/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import WatchKit
import Foundation


class SummaryCardInterfaceController: WKInterfaceController {

    @IBOutlet weak var summaryCardImage: WKInterfaceImage!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        summaryCardImage.setImageNamed("summaryCardW-08")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
