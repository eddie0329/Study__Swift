//
//  WeatherInformation.swift
//  weather
//
//  Created by 최종선 on 2021/12/15.
//

import Foundation

struct WeatherInformation: Codable {
  let weather: [Weather]
  let temp: Temp
  let name: String
  
  enum CodingKeys: String, CodingKey {
    case weather
    case temp = "main"
    case name
  }
}

struct Weather: Codable {
  let id: Int
  let main: String
  let description: String
  let icon: String
}

struct Temp: Codable {
  let temp: Double
  let feelsLike: Double
  let tempMin: Double
  let tempMax: Double
  
  enum CodingKeys: String, CodingKey {
    case temp
    case feelsLike = "feels_like"
    case tempMin = "temp_min"
    case tempMax = "temp_max"
  }
}
