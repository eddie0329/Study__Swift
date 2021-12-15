//
//  ViewController.swift
//  weather
//
//  Created by 최종선 on 2021/12/15.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var cityNameTextField: UITextField!
  @IBOutlet weak var cityNameLabel: UILabel!
  @IBOutlet weak var weatherDescriptionLabel: UILabel!
  @IBOutlet weak var tempLabel: UILabel!
  @IBOutlet weak var maxTempLabel: UILabel!
  @IBOutlet weak var minTempLabel: UILabel!
  @IBOutlet weak var weatherStackView: UIStackView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func tapFetchWeatherButton(_ sender: UIButton) {
    if let cityName = self.cityNameTextField.text {
      self.getCurrentWeather(cityName: cityName)
      self.view.endEditing(true)
    }
  }
  
  func getCurrentWeather(cityName: String) {
    guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=d300ea471541b53a05ceaa6ea25e7582") else { return }
    let session = URLSession(configuration: .default)
    session.dataTask(with: url) { [weak self] data, response, error in
      let succssRange = (200..<300)
      guard let data = data, error == nil else { return }
      let decoder = JSONDecoder()
      // 정상 동작
      if let response = response as? HTTPURLResponse, succssRange.contains(response.statusCode) {
        guard let weatherInformation = try? decoder.decode(WeatherInformation.self, from: data) else { return }
        DispatchQueue.main.async {
          self?.weatherStackView.isHidden = false
          self?.configureView(weatherInformation: weatherInformation)
        }
      } else {
        guard let errorMessage = try? decoder.decode(ErrorMessage.self, from: data) else { return }
        DispatchQueue.main.async {
          self?.showAlert(errorMessage: errorMessage.message)
        }
      }
    }.resume()
  }
  
  func configureView(weatherInformation: WeatherInformation) {
    self.cityNameLabel.text = weatherInformation.name
    if let weather = weatherInformation.weather.first {
      self.weatherDescriptionLabel.text = weather.description
      self.tempLabel.text = "\(Int(weatherInformation.temp.temp - 273.15))℃"
      self.minTempLabel.text = "최저: \(Int(weatherInformation.temp.tempMin - 273.15))℃"
      self.maxTempLabel.text = "최고: \(Int(weatherInformation.temp.tempMax - 273.15))℃"
    }
  }
  
  func showAlert(errorMessage: String) {
    let alert = UIAlertController(title: "Error", message: errorMessage, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "확인", style: .default, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
  
}

