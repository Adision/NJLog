//
//  AppDelegate.swift
//  PNSLog
//
//  Created by Apple on 2017/2/10.
//  Copyright © 2017年 Apple. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        NJLog(123)
        return true
    }
}

func NJLog<P>(_ message:P,fileName:String=#file,methodName:String=#function,lineNumer:Int=#line) {
    #if DEBUG
    print("\((fileName as NSString).pathComponents.last!)->\(methodName)[\(lineNumer)]:\(message)")
    #endif
}
