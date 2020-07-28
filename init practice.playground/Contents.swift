import UIKit

class Person {
    var name: String
    var age: Int
    
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(name: "zehye", age: age)
    }
}
