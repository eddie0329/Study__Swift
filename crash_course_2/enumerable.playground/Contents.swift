import UIKit

enum CompassPoint: String {
  case north = "북"
  case south = "남"
  case east = "동"
  case west = "서"
  case none = "논"
  // case north, south, east, west
}

var direction = CompassPoint.east // east
direction = .west // west

switch direction {
  case .north:
    print(direction.rawValue)
  case .west:
    print(direction.rawValue)
  case .east:
    print(direction.rawValue)
  case .south:
    print(direction.rawValue)
  default:
    print(direction.rawValue)
}

let direction2 = CompassPoint(rawValue: "남") // south

enum PhoneError {
  case unknown
  case batteryLow(String)
}

let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")

switch error {
  case .batteryLow(let message):
    print(message)
  case .unknown:
    print("알수 없는 에러")
}
// 배터리가 곧 방전됩니다.

