import UIKit

func timeConversion(s: String) -> String {
    var str = s
    let format = "\(str.removeLast())\(str.removeLast())"
    var splited = str.split(separator: ":")
    if format.contains("P") {
        if (splited[0] == "12") {
            return str
        } else {
            let parsedHour = (Int(splited[0]) ?? 0) + 12
            splited[0] = "\(parsedHour)"
            return splited.joined(separator: ":")
        }
    }
    if format.contains("A") {
        if (splited[0] == "12") {
            splited[0] = "00"
            return splited.joined(separator: ":")
        } else {
            return str
        }
    }
    return str
}

timeConversion(s: "12:01:00PM")
timeConversion(s: "12:01:00AM")
timeConversion(s: "07:05:45PM")
