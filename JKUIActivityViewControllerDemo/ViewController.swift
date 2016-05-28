//
//  ViewController.swift
//  JKUIActivityViewControllerDemo
//
//  Created by Jayesh Kawli Backup on 5/25/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openActivityControllerButtonPressed(sender: UIButton) {
        
        let activityItems = ["Please check out my website", NSURL(string: "https://www.jayeshkawli.ghost.io")!, "Awesome Donuts", UIImage(named: "donuts.jpg")!]
        
        let searchActivity = CustomActivityOne()
        let presidentActivity = CustomActivityTwo()
        let customActivityTypes = [searchActivity, presidentActivity]
        
        let activityIndicatorView = UIActivityViewController(activityItems: activityItems, applicationActivities: customActivityTypes)
        
        activityIndicatorView.popoverPresentationController?.sourceView = sender
        activityIndicatorView.completionWithItemsHandler = { (activityType, completed, returnedItems, error) in
            if let activityName = activityType?.componentsSeparatedByString(".").last {
                let completedString = completed ? "Completed" : "Cancelled"
                let operationFinishMessage = "Activity '\(activityName)' \(completedString)"
                self.showMessage(operationFinishMessage)
            }
        }
        self.presentViewController(activityIndicatorView, animated: true, completion: nil)
    }
    
    func showMessage(alertDetail: String) {
        let alertController = UIAlertController(title: "Activity View Controller Demo", message: alertDetail, preferredStyle: .Alert)
        let alertAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(alertAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
