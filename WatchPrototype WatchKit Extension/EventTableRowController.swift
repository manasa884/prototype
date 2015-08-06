//
//  EventTableRowController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/4/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import UIKit
import WatchKit

class EventTableRowController: NSObject {
    @IBOutlet var titleLabel: WKInterfaceLabel?
    @IBOutlet var timeLabel: WKInterfaceLabel?

    @IBOutlet weak var eventCell: WKInterfaceGroup!
}
