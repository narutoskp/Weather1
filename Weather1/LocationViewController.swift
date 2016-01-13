//
//  LocationViewController.swift
//  Weather1
//
//  Created by Ben Thotsaphon on 1/12/2559 BE.
//  Copyright © 2559 bananacoding. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var textviewLatitude: UITextField!
    
    @IBOutlet weak var textfieldLongitude: UITextField!
    
    var lat = String()
    var long = String()
    var id : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        
     /*
        let parser1 = XMLParser1(url1: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.placefinder%20where%20text=%22\(lat),\(long)%22%20and%20gflags=%22R%22")
        
        let weather: Weather1 = parser1.weather1
        
        id = weather.woeid
        
        print(id)
        
        print(lat,long)
        
        */
        
        
        //var string = String()
        
        //string = "\(weather.title)\n\n"
        //string += "Current Conditions: \(weather.descriptionOfConditions), \(weather.temp)C\n\n"
        //string += "forecast:\n"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnOkay(sender: AnyObject) {
        
        
        lat = textviewLatitude.text!
        long = textfieldLongitude.text!
        
        print("Yes11")
        
        let parser = XMLParser1(url1:"https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.placefinder%20where%20text=%22\(lat),\(long)%22%20and%20gflags=%22R%22")
        
        print("Yes11.1")
        
        let weather: Weather1 = parser.weather1
        
        id = weather.woeid
        
        print(parser.weather1)
        
        print("@#$%%^^&  --------->   \(id)")

        
//        var string = String()
//        
//
//        string = weather1.woeid
        
//        
//        id += string
        
//        print("Yes12",id)
//        
//        
//
//        
//        print(lat,long)
        
    
        //let parser = XMLParser1(url1: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.placefinder%20where%20text=%22\(lat),\(long)%22%20and%20gflags=%22R%22")

        //print(lat)
        //print(long)
        
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showWeather" {
            let controller = segue.destinationViewController as! ViewController
            controller.id1 = id
            //controller.id1 = textviewLatitude.text!
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
