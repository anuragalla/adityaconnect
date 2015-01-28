//
//  NewsFeed.swift
//  AdityaConnect
//
//  Created by Anurag on 1/23/15.
//  Copyright (c) 2015 Anurag. All rights reserved.
//

import UIKit

class NewsFeed: NSObject {
    
    var id :NSString?
    var msgTitle:NSString?
    var msgBody:NSString?
    var sendto:NSString?
    var sender:NSString?
    var recievedTime:NSString?
    
    init(id:NSString, msgTitle:NSString, msgBody:NSString, sendto:NSString, sender:NSString, recievedTime:NSString){
        self.id=id
        self.msgBody=msgBody
        self.msgTitle=msgTitle
        self.sendto=sendto
        self.sender=sender
        self.recievedTime=recievedTime
    }
    
}
