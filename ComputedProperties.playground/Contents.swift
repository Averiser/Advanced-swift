import UIKit

var pizzaInInches: Int = 10 {
  willSet {
//    print(pizzaInInches)
//    print(newValue)
  }
  didSet {
    if pizzaInInches >= 18 {
      print("Invalid size specified, pizzaInInches set to 18.")
      pizzaInInches = 18
    }
    
//    print(oldValue)
//    print(pizzaInInches)
  }
}

pizzaInInches = 33
print(pizzaInInches)


var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
  get {
    return pizzaInInches - 4
  }
//  set {
//    print("numberOfSlices now has a new value which is \(newValue)")
//  }
}

var numberOfPizza: Int {
  get {
    let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
    return numberOfPeople / numberOfPeopleFedPerPizza
  }
  set {
    let totalSlices = numberOfSlices * newValue
    numberOfPeople = totalSlices / slicesPerPerson
  }
}
numberOfPizza = 4

print(numberOfPeople)
