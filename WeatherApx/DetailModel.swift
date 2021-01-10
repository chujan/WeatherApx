//
//  DetailModel.swift
//  WeatherApx
//
//  Created by Chukwuemeka Jennifer on 04/01/2021.
//
import Foundation
import UIKit

struct DetailModel {
    let conditonId: Int
    let current: Current
    let hourly: [Current]
    let daily: [Daily]
    
    
    func temperture(tempretureString: Double) -> String {
        return String(format: "%.1f", tempretureString)
    }
    
        func getConditionName(conditionId: Int) -> UIImage {
        switch conditonId {
          case  200...232:
              return #imageLiteral(resourceName: "Group 675")
          case 300...321:
              return #imageLiteral(resourceName: "Group 675")
          case 500...531:
              return #imageLiteral(resourceName: "Group 675")
          case 600...622:
              return #imageLiteral(resourceName: "Group 675")
          case 701...781:
              return #imageLiteral(resourceName: "Group 675")
          case 800:
              return #imageLiteral(resourceName: "Group 675")
          case 801...804:
              return #imageLiteral(resourceName: "Group 655")
          default:
           return #imageLiteral(resourceName: "Group 658-3")
          }
    }
}
