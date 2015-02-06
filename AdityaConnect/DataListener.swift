//
//  SampleData.swift
//  AdityaConnect
//
//  Created by Anurag on 1/23/15.
//  Copyright (c) 2015 Anurag. All rights reserved.
//

import Foundation
import Alamofire


//let newsData = [NewsFeed(id: 1, msgTitle: "first", msgBody: "first body"),
//    NewsFeed(id: 2, msgTitle: "secondtitle", msgBody: "secondbody")]

var myNewData=[NewsFeed]()

class SampleData{
    

    func getData(){
        let url=NSURL(string:"http://mcr.org.in/campusnet/gcm/testresponse.php?id=250")
//       let url = NSURL(string: "http://mcr.org.in/campusnet/gcm/testresponse.php?id=250")
////        let session = NSURLSession.sharedSession()
////        
////        let dataTask = session.dataTaskWithURL(url!, completionHandler: { (data: NSData!, response:NSURLResponse!,
////            error: NSError!) -> Void in
////            //do something
////        })
//        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
//            println(NSString(data: data, encoding: NSUTF8StringEncoding))
//        }
//        
//        task.resume()
//        Alamofire.request(.GET, url)
//        .responseString { (request, response, string, _) in
//               println(string)
//         }
//        .responseJSON { (request, response, JSON, _) in
//            println(JSON)
//         }
//        Alamofire.request(.GET, "http://mcr.org.in/campusnet/gcm/testresponse.php?id=250").responseString { (request, response, data, error) in
//            
//            let json = JSON(data: data)
//        }
        
        
        
        Alamofire.request(.GET, url!).responseJSON{ (req, res, json, error) in
            if(error != nil) {
                NSLog("Error: \(error)")
                println(req)
                println(res)
            }
            else {
                NSLog("Success: \(url)")
                //println(json)
               
                let jsonData=JSON(json!)
                //println(jsonData)
                for (id:String, jsonData:JSON)in jsonData{
                   // println(jsonData["msgtitle"])
                    let appendData = [NewsFeed (id: jsonData["id"].stringValue, msgTitle: jsonData["msgtitle"].stringValue, msgBody: jsonData["msgbody"].stringValue, sendto: jsonData["sendto"].stringValue, sender: jsonData["sender"].stringValue, recievedTime: jsonData["senttime"].stringValue)]
                    println(appendData)
                   //myNewData.append(appendData)
                }
                //println(myNewData)
                //let mydata=jsonData.stringValue
               // println(mydata)
            
            }
        }
    }
}