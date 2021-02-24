//
//  AppDelegate.swift
//  IOSFlutterEmbbeded
//
//  Created by Rafael Barbosa on 28/01/21.
//

import UIKit
import Flutter;
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FlutterModule.sharedInstance().initFlutter()
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
      }


}

