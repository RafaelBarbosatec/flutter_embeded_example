//
//  FlutterNavigatorManager.swift
//  IOSFlutterEmbbeded
//
//  Created by Rafael Barbosa on 24/02/21.
//

import Flutter;
import Foundation

class FlutterNavigatorManager{
    
    let engine:FlutterEngine
    
    init(engine: FlutterEngine) {
        self.engine = engine
    }
    
    func goHome(navController: UINavigationController?) {
        let flutterViewController =
            FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        flutterViewController.pushRoute("/first")
        navController?.pushViewController(flutterViewController, animated: true)
    }
    
    func goSecond(navController: UINavigationController?) {
        let flutterViewController =
            FlutterViewController(engine: engine, nibName: nil, bundle: nil)
        flutterViewController.pushRoute("/second")
        navController?.pushViewController(flutterViewController, animated: true)
    }
    
}
