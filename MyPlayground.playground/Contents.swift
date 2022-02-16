import UIKit


 
func facebook(name: String, age: Int, wc: Bool) {
    if age < 13 && wc == false {
        print("sorry \(name), you are too young")
    } else {
        print("Welcome to facebook, \(name)")
    }
}

facebook(name: "Bob", age: 23, wc: false)
facebook(name: "Tony", age: 3, wc: false)
