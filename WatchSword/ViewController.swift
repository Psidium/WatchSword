//
//  ViewController.swift
//  WatchSword
//
//  Created by Psidium on 2/21/16.
//  Copyright © 2016 Psidium. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {

    @IBOutlet weak var attZ: UILabel!
    @IBOutlet weak var attY: UILabel!
    @IBOutlet weak var attX: UILabel!
    
    var watchSession : WCSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if(WCSession.isSupported()){
            watchSession = WCSession.defaultSession()
            watchSession!.delegate = self
            watchSession!.activateSession()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]){
        let atittudeX = message["row"] as! Double
        let atittudeY = message["pitch"] as! Double
        let atittudeZ = message["yaw"] as! Double
        attZ.text = "roll: \(atittudeZ)"
        attX.text = "pitch: \(atittudeX)"
        attY.text = "yaw: \(atittudeY)"
    }

}

