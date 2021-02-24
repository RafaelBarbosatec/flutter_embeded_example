//
//  FlutterChannelManager.swift
//  IOSFlutterEmbbeded
//
//  Created by Rafael Barbosa on 24/02/21.
//

import Flutter;
import Foundation

class FlutterChannelManager{
        
    let engine:FlutterEngine
    
    init(engine: FlutterEngine) {
        self.engine = engine
        self.setup()
    }
    
    private func setup(){
        
        FlutterMethodChannel(
            name: "TestChannel",
            binaryMessenger: engine.binaryMessenger
        ).setMethodCallHandler({(call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            
            print(call.method);
            
        });
    }
}
