//
//  NetworkOperation.swift
//  Stormy
//
//  Created by Kirsche, Kevin Richard on 11/2/15.
//  Copyright © 2015 Kevin Kirsche. All rights reserved.
//

import Foundation

class NetworkOperation {
    lazy var config: NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
    lazy var session: NSURLSession = NSURLSession(configuration: self.config)
    let queryURL = NSURL

    init(url: NSURL) {
        self.queryURL = url
    }
}