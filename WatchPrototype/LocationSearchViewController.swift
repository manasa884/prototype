//
//  LocationSearchViewController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/5/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import UIKit
import GoogleMaps

class LocationSearchViewController: UIViewController {

    @IBOutlet weak var locSearchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let gpaViewController = GooglePlacesAutocomplete(apiKey: "AIzaSyCKc-BJiMw0jNkQ9YXgFykr5wcdJm3OVho", placeType: .Address)
        gpaViewController.placeDelegate = self
        presentViewController(gpaViewController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension LocationSearchViewController: GooglePlacesAutocompleteDelegate {
    func placeSelected(place: Place) {
        println(place.description)
    }
    func placeViewClosed() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}