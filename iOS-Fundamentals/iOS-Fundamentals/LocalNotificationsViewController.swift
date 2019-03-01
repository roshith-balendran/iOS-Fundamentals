//
//  LocalNotificationsViewController.swift
//  iOS-Fundamentals
//
//  Created by Roshith Balendran on 14/01/19.
//  Copyright © 2019 Roshith Balendran. All rights reserved.
//

import UIKit
import UserNotifications

class LocalNotificationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showLocalNotifications(expiryDate: Date().addingTimeInterval(10))
        
    }
    
    func showLocalNotifications(expiryDate: Date) {
        let notificationCenter = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "Suscription expired"
        //content.subtitle = "Add Subtitle"
        content.body = "Please renew your subscription"
        content.sound = UNNotificationSound.default
        content.threadIdentifier = "local-notification"
        
        let date = Date(timeIntervalSinceNow: 10)
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from:date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        let request = UNNotificationRequest(identifier: "content", content: content, trigger: trigger)
        
        notificationCenter.add(request) { (error) in
            if error != nil {
                print(error ?? "Error!")
            }
        }
    }

}
