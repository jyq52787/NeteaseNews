//
//  AppDelegate.swift
//  News
//
//  Created by 贾永强 on 15/10/25.
//  Copyright © 2015年 heima. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        window?.backgroundColor = UIColor.whiteColor()
        
        window?.rootViewController = photoSeletorViewController()
        
        window?.makeKeyAndVisible()
        
        return true
    }
}

