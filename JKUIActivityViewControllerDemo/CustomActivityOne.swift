//
//  CustomActivityOne.swift
//  JKUIActivityViewControllerDemo
//
//  Created by Jayesh Kawli Backup on 5/28/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import UIKit

class CustomActivityOne: UIActivity {
    override func activityType() -> String? {
        return "jayesh.activityType.Search"
    }
    
    override func activityTitle() -> String? {
        return "Search Engine"
    }
    
    override func activityImage() -> UIImage? {
        return UIImage(named: "google")
    }
    
    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        return true
    }
    
    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        
    }
    
    override func performActivity() {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://www.google.com")!)
    }
}
