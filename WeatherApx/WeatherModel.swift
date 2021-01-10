//
//  WeatherModel.swift
//  WeatherApx
//
//  Created by Chukwuemeka Jennifer on 29/12/2020.
//

import Foundation
struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let humidity: Int
    let speed: Double
    
    
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case  200...232:
            return "bolt"
        case 300...321:
            return "drizzle"
        case 500...531:
            return "rain"
        case 600...622:
            return "snow"
        case 701...781:
            return "fog"
        case 800:
            return "max"
        case 801...804:
            return "bolt"
        default:
         return "cloud"
        }
    }
    
    
}
