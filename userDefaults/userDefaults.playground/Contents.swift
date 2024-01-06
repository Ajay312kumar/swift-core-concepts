import UIKit

// here we are setting the data in userDefault


let defaults = UserDefaults.standard

defaults.set(10, forKey: "Ten")
defaults.set(true, forKey: "isSwitchOn")
defaults.set("learnUserDefaults", forKey: "userDefaults")
defaults.set(NSData(), forKey: "AppLastOpened")
let array = [1,2,3,4,5]
defaults.set(array, forKey: "numberArray")
let dictionary = ["name": "Ajay"]
defaults.set(dictionary, forKey: "dictionary")



// here we are getting the data from userDefault

let number = defaults.integer(forKey: "Ten")
print(number)

let switchValue = defaults.bool(forKey: "isSwitchOn")
print(switchValue)

defaults.string(forKey: "userDefaults")
defaults.object(forKey: "AppLastOpened")
let myArray = defaults.array(forKey: "numberArray") as! [Int]
defaults.dictionary(forKey: "dictionary")


