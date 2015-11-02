//
//  CurrentWeather.swift
//  Stormy
//
//  Created by Kevin Kirsche on 10/31/15.
//  Copyright © 2015 Kevin Kirsche. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let temperature: Int
    let humidity: Int
    let precipProbability: Int
    let summary: String
    
    init(weatherDictionary: [String:AnyObject]) {
        temperature = weatherDictionary["temperature"] as! Int
        let humidityFloat = weatherDictionary["humidity"] as! Double
        humidity = Int(humidityFloat * 100)
        let percipFloat = weatherDictionary["precipProbability"] as! Double
        precipProbability = Int(percipFloat * 100)
        summary = weatherDictionary["summary"] as! String
    }
}
