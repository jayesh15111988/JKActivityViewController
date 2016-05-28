//
//  CustomActivityTwo.swift
//  JKUIActivityViewControllerDemo
//
//  Created by Jayesh Kawli Backup on 5/28/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import UIKit

class CustomActivityTwo: UIActivity {
    
    var navController: UINavigationController = UINavigationController()
    
    override func activityType() -> String? {
        return "jayesh.activityType.Obama"
    }
    
    override func activityTitle() -> String? {
        return "President"
    }
    
    override func activityImage() -> UIImage? {
        return UIImage(named: "obama_icon")
    }
    
    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        return true
    }
    
    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        
    }
    
    override func activityViewController() -> UIViewController? {
        let presidentViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("president")
        navController = UINavigationController(rootViewController: presidentViewController)
        presidentViewController.title = "Barack Obama"
        presidentViewController.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: #selector(dismissViewController))
        return navController
    }
    
    func dismissViewController() {
        navController.dismissViewControllerAnimated(true, completion: nil)
        activityDidFinish(true)
    }
}

