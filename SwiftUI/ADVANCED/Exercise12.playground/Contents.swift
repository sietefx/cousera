import UIKit

protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}
class DeliverDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food)")
    }
}
class LittleLemon {
    var deliveryDriver: Driver?
    func deliveryFood(_ food: String, to destination: String) {
        if let driver = deliveryDriver {
            driver.driveToDestination(destination, with: food)
        } else {
            print("No delivery driver.")
        }
    }
}
let bob = DeliverDriver(name: "Bob")
let littleLemon = LittleLemon()
littleLemon.deliveryFood("Super Spaghetti", to: "1 Spaghetti Lane")
littleLemon.deliveryDriver = bob
littleLemon.deliveryFood("Super Spaghetti", to: "1 Spaghetti Lane")
