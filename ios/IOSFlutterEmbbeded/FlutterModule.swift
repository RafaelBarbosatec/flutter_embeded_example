//
//  FlutterModule.swift
//  IOSFlutterEmbbeded
//
//  Created by Rafael Barbosa on 24/02/21.
//

import Foundation
import Flutter;
import FlutterPluginRegistrant

@objc class  FlutterModule:NSObject {

    private lazy var flutterEngine = FlutterEngine(name: "my_engine")
    
    var navigator:FlutterNavigatorManager? = nil
    
    private var channelManager:FlutterChannelManager? = nil
    
    private static let shared = FlutterModule();
    
    @objc class func sharedInstance() -> FlutterModule {
        return FlutterModule.shared
    }
    
    @objc func initFlutter() {
        // Runs the default Dart entrypoint with a default Flutter route.
        flutterEngine.run();
        // Used to connect plugins (only if you have plugins with iOS platform code).
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        
        navigator = FlutterNavigatorManager(engine: flutterEngine)
        channelManager = FlutterChannelManager(engine: flutterEngine)
        
    }
}
