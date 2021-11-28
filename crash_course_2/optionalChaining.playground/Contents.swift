import UIKit


struct Developer {
  let name: String
}

struct Company {
  let name: String
  var developer: Developer?
  
}

var developer = Developer(name: "Sam")
var company = Company(name: "Eddie", developer: developer)
print(company.developer)
print(company.developer?.name) // Optional("Sam")
print(company.developer!.name) // Sam
