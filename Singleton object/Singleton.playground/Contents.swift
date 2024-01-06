import UIKit
  
// without using sigleton
class Car {
    
    var colour = "Red"
    
}

var myCar = Car()
myCar.colour = "Blue"

let yourCar = Car()
print(yourCar.colour)    // Red will print,Because the value of colour is not changing it always refer to old value




// use of singleton

class CarA{
    
    var colour = "Red"
    static let singleton = CarA()
}

var mycarA = CarA.singleton
mycarA.colour = "Blue"

var yourCarA = CarA.singleton
print(yourCarA.colour)      // here Blue will print, Because the values of colour is changing


class A {
    
    init(){
        CarA.singleton.colour = "Brown"
    }
}

class B {
    
    init(){
        CarA.singleton.colour = "Black"
    }
}

