//
//  PageContentViewController.swift
//  WatchPrototype
//
//  Created by Manasa Tipparam on 8/3/15.
//  Copyright (c) 2015 Manasa Tipparam. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {

    
    @IBOutlet weak var cardImageView: UIImageView!
    
    var pageIndex: Int!
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.cardImageView.image = UIImage(named: imageName)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
