import UIKit

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit { "\(name) is being deinitialized"}
}

class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    var tenant: Person?
    deinit { "Apartment \(unit) is being deinitialized"}
}
