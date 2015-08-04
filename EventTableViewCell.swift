//
//  EventTableViewCell.swift
//  
//
//  Created by Manasa Tipparam on 8/3/15.
//
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var eventNameLabel: UILabel!
    
    @IBOutlet weak var eventDateLabel: UILabel!
    
    @IBOutlet weak var eventTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCells(eventName: String, eventDate: String, eventTime: String)
    {
        self.eventNameLabel.text = eventName
        self.eventDateLabel.text = eventDate
        self.eventTimeLabel.text = eventTime
    }

}
