//
//  ViewController.swift
//  Stormy
//
//  Created by Kevin Kirsche on 10/31/15.
//  Copyright © 2015 Kevin Kirsche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentTemperatureLabel: UILabel?
    @IBOutlet weak var currentHumidityLabel: UILabel?
    @IBOutlet weak var currentPrecipitationLabel: UILabel?
    
    private let forecastAPIKey = "XX"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastAPIKey)/")
        let forecastURL = NSURL(string: "60.7142,-80.0064", relativeToURL: baseURL)

        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: configuration)

        let request = NSURLRequest(URL: forecastURL!)
        let dataTask = session.dataTaskWithRequest(request, completionHandler: {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            print(data!)
        })

        dataTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
