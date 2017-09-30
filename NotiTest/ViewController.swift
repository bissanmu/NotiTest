//
//  ViewController.swift
//  NotiTest
//
//  Created by admin on 2017. 9. 17..
//  Copyright © 2017년 admin. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    @IBAction func pressBtn(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        
        content.title = "This is title : seonwoo"
        content.subtitle = "This is subtitle : UserNotifications tutoral"
        content.body = "This is body : 블로그 글 쓰기"
        content.badge = 1
        
        let TimeIntervalTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
        
        
        let request = UNNotificationRequest(identifier: "timer", content: content, trigger: TimeIntervalTrigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, Error in})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


