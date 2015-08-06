//
//  MapCardInterfaceController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/5/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import WatchKit
import Foundation


class MapCardInterfaceController: WKInterfaceController {

    
    
    @IBOutlet weak var map: WKInterfaceMap!
    
    @IBOutlet weak var cityLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        var mapLocation = CLLocationCoordinate2D(latitude: 37.3681, longitude: -122.033422)
        var coordinateSpan = MKCoordinateSpanMake(1, 1)
        self.map.addAnnotation(mapLocation, withPinColor: WKInterfaceMapPinColor.Purple)
        self.map.setRegion(MKCoordinateRegionMake(mapLocation, coordinateSpan))
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
