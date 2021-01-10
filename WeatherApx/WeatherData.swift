//
//  WeatherData.swift
//  WeatherApx
//
//  Created by Chukwuemeka Jennifer on 29/12/2020.
//

import Foundation
struct WeatherData: Codable {
    let name: String
    let main: Main
    let wind: Wind
    let weather: [Weather]
    
    
}

struct Main: Codable {
    let temp: Double
    let humidity: Int

}

struct Weather: Codable {
    let description: String
    let id: Int
}

struct Wind: Codable {
    let speed: Double
    
}
