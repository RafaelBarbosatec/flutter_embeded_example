//
//  ViewController.swift
//  IOSFlutterEmbbeded
//
//  Created by Rafael Barbosa on 28/01/21.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonClick(_ sender: Any) {
        FlutterModule.sharedInstance().navigator?.goHome(navController: self.navigationController)
        
    }
   
    @IBAction func burron2Click(_ sender: Any) {
        FlutterModule.sharedInstance().navigator?.goSecond(navController: self.navigationController)
    }
    

}

