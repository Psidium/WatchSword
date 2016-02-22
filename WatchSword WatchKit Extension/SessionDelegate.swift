//
//  SessionDelegate.swift
//  WatchSword
//
//  Created by Borges, Gabriel on 2/22/16.
//  Copyright © 2016 Psidium. All rights reserved.
//
import WatchConnectivity

class SessionDelegate: NSObject, WCSessionDelegate {
    
    let watchSession: WCSession
    
    override init() {
        guard WCSession.isSupported() else {
            assertionFailure("WCSession is not supported")
            fatalError("WCSession is not supported")
        }
        watchSession = WCSession.defaultSession()
        super.init()
        watchSession.delegate = self
        watchSession.activateSession()
    }
    
    
    func send(data: [String: AnyObject]) {
        watchSession.sendMessage(data, replyHandler: nil, errorHandler: nil)
    }

}
