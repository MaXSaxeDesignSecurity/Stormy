//
//  ViewController.swift
//  Stormy
//
//  Created by Kevin Kirsche on 10/31/15.
//  Copyright © 2015 Kevin Kirsche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let plistPath = NSBundle.mainBundle().pathForResource("CurrentWeather", ofType: "plist"),
        let weatherDictionary = NSDictionary(contentsOfFile: plistPath),
        let currentWeatherDictionary = weatherDictionary["currently"] as? [String:AnyObject] {
            let currentWeather = CurrentWeather(weatherDictionary: currentWeatherDictionary)
            print(currentWeather)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
