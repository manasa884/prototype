//
//  EventListViewController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/3/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var eventListTableView: UITableView!
    
    var eventArray: [Event] = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpEvents()
        self.eventListTableView.delegate = self
        self.eventListTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpEvents()
    {
        var event1 = Event(name: "Daily Product Status", date: "Monday, August 3", time: "9:00 AM - 9:20 AM")
        var event2 = Event(name: "Call John", date: "Monday, August 3", time: "11:00 AM - 12:30 PM")
        var event3 = Event(name: "Meeting with Laurie Barton", date: "Tuesday, August 4", time: "10:30 AM - 12:00 PM")
        var event4 = Event(name: "Jake's Birthday", date: "Tuesday, August 4", time: "5:00 PM - 8:00 PM")
        var event5 = Event(name: "Interview Peter Burke", date: "Wednesday, August 5", time: "2:00 PM - 4:00 PM")
        
        eventArray.append(event1)
        eventArray.append(event2)
        eventArray.append(event3)
        eventArray.append(event4)
        eventArray.append(event5)

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return eventArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: EventTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! EventTableViewCell
        let events = eventArray[indexPath.row]
        cell.setCells(events.name, eventDate: events.date, eventTime: events.time)
        return cell
    }

    
    //In order to delete events, uncomment this section...
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
//    {
//        if (editingStyle == UITableViewCellEditingStyle.Delete)
//        {
//            eventArray.removeAtIndex(indexPath.row)
//            self.eventListTableView.reloadData()
//        }
//    }
}