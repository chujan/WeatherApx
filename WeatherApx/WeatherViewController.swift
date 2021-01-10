//
//  WeatherViewController.swift
//  WeatherApx
//
//  Created by Chukwuemeka Jennifer on 29/12/2020.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController, UITextFieldDelegate,WeatherMangerDelegate,CLLocationManagerDelegate {
    
    
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cloudLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var humLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    
    var weatherManager = WeatherManager()
    var dateFormat = DateFormatter()
    let locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
   
        dateFormat.dateFormat = "MM, dd, yyy"
        dateLabel.text = dateFormat.string(from: Date())
        weatherManager.delegate = self

  
    }
    
    
    
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.dateLabel.text = self.dateFormat.string(from: Date())
            self.humLabel.text = String(weather.humidity) + "%"
            self.windLabel.text = String(weather.speed) + "km/h"
            self.cloudLabel.text = weather.conditionName
            self.locationLabel.text = weather.cityName
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            weatherManager.fetchRequest(latitude: lat, longitute: lon)
    
        
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}















