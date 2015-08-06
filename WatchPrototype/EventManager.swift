
import Foundation
import UIKit
import WatchKit

var eventManager: EventManager = EventManager()

struct event {
    var name = "Event name"
    var location = "Event location"
    
}

class EventManager: NSObject
{
    var name = " " //Event name
    var date = " " //Event date
    var time = " " //Event time
    
//    init(name: String, date: String, time: String)
//    {
//        self.name = name
//        self.date = date
//        self.time = time
//    }

}